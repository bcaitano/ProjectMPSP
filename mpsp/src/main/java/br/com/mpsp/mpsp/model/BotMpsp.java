package br.com.mpsp.mpsp.model;

import com.ibm.cloud.sdk.core.security.IamAuthenticator;
import com.ibm.watson.assistant.v2.Assistant;
import com.ibm.watson.assistant.v2.model.CreateSessionOptions;
import com.ibm.watson.assistant.v2.model.SessionResponse;

public class BotMpsp{
		
    public static void main(String[] args) throws Exception {
    	
    	IamAuthenticator authenticator = new IamAuthenticator("A3ZbhZ7oCIU9l1PUuB_6EV7knONjZZxeOnqwPLVBC97l");
    	
    	Assistant assistant = new Assistant("2020-04-01", authenticator);
        assistant.setServiceUrl("https://api.us-south.assistant.watson.cloud.ibm.com/instances/707ed209-fce9-4e6c-83ee-01042de4996f/v2/assistants/950d8a78-7853-44ac-abe6-c0acc63589ff/sessions");
    	
        CreateSessionOptions options = new CreateSessionOptions.Builder("950d8a78-7853-44ac-abe6-c0acc63589ff").build();

        SessionResponse response = assistant.createSession(options).execute().getResult();

        System.out.println(response);
    }
}	
