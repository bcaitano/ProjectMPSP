package br.com.mpsp.mpsp;

import java.util.List;
import java.util.logging.LogManager;

import org.apache.catalina.Context;
import org.apache.tomcat.util.scan.StandardJarScanner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.embedded.tomcat.TomcatServletWebServerFactory;
import org.springframework.context.annotation.Bean;

import com.ibm.cloud.sdk.core.security.Authenticator;
import com.ibm.cloud.sdk.core.security.IamAuthenticator;
import com.ibm.watson.assistant.v2.Assistant;
import com.ibm.watson.assistant.v2.model.CreateSessionOptions;
import com.ibm.watson.assistant.v2.model.DeleteSessionOptions;
import com.ibm.watson.assistant.v2.model.MessageOptions;
import com.ibm.watson.assistant.v2.model.MessageResponse;
import com.ibm.watson.assistant.v2.model.RuntimeResponseGeneric;
import com.ibm.watson.assistant.v2.model.SessionResponse;

@SpringBootApplication
public class MpspApplication {

	public static void main(String[] args) {
		SpringApplication.run(MpspApplication.class, args);

		// Assistente Watson
		LogManager.getLogManager().reset();

		Authenticator authenticator = new IamAuthenticator("A3ZbhZ7oCIU9l1PUuB_6EV7knONjZZxeOnqwPLVBC97l");
		Assistant service = new Assistant("2019-02-28", authenticator);
		String assistantId = "950d8a78-7853-44ac-abe6-c0acc63589ff";

		// Criar sessão.
		CreateSessionOptions createSessionOptions = new CreateSessionOptions.Builder(assistantId).build();
		SessionResponse session = service.createSession(createSessionOptions).execute().getResult();
		String sessionId = session.getSessionId();

		// Startar conversa.
		MessageOptions messageOptions = new MessageOptions.Builder(assistantId, sessionId).build();
		MessageResponse response = service.message(messageOptions).execute().getResult();
		
		List<RuntimeResponseGeneric> responseGeneric = response.getOutput().getGeneric();
		if (responseGeneric.size() > 0) {
			if (responseGeneric.get(0).responseType().equals("text")) {
				System.out.println(responseGeneric.get(0).text());
			}
		}
		
		// Deletar Sessão.
		DeleteSessionOptions deleteSessionOptions = new DeleteSessionOptions.Builder(assistantId, sessionId).build();
		service.deleteSession(deleteSessionOptions).execute();
	}

	@Bean
	public TomcatServletWebServerFactory tomcatFactory() {
		return new TomcatServletWebServerFactory() {
			@Override
			protected void postProcessContext(Context context) {
				((StandardJarScanner) context.getJarScanner()).setScanManifest(false);
			}
		};
	}

}
