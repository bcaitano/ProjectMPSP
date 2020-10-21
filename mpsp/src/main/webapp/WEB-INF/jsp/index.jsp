<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
	<title>MPSP</title>
	
	<meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<c:set value="${pageContext.request.contextPath}" var="contextPath"/>
    <link href="${contextPath}/css/reset.css" rel="stylesheet" />
    <link href="${contextPath}/css/index.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet" />

    <script src="https://kit.fontawesome.com/9011431d6c.js" crossorigin="anonymous"></script>
</head>
<body>
	<h1>Olá Bruno!</h1>

    <section id="chatbot">
        <nav id="btn-chatbot">
            <figure><span><i class="far fa-comments fa-3x"></i></span></figure>
        </nav>
        <div id="btn-chatbot-hover">Tire suas dúvidas com o Bruninho :)</div>
        <article id="cx-dialog">
            <header class="header-cx-dialog">
                <span class="cx-avatar"><i class="fab fa-earlybirds fa-3x"></i></span>
                <span class="cx-avatar-nome">Bruninho</span>
                <span id="fechar" class="cx-fechar"><i class="fas fa-window-close fa-2x" title="fechar"></i></span>
            </header>

            <article class="body-cx-dialog">
                <div class="teste-msg">
                    <div class="teste-msg-left"><p>TesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTeste</p></div>
                    <div class="teste-msg-right"><p>TesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTeste</p></div>
                    <div class="teste-msg-left"><p>esteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTeste</p></div>
                    <div class="teste-msg-left"><p>TesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTes</p></div>
                    <div class="teste-msg-right"><p>TesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTeste</p></div>
                    <div class="teste-msg-left"><p>TesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTes</p></div>
                    <div class="teste-msg-right"><p>TesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTeste</p></div>
                    <div class="teste-msg-right"><p>TesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTeste</p></div>
                    <div class="teste-msg-left"><p>esteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTesteTeste</p></div>
                </div>
            </article>

            <footer class="footer-cx-dialog">
                <form class="form cx-dialog-form" id="formChatBot">
                    <div class="cx-dialog-form-input">
                        <input class="dialog-form-input" type="text" id="dialog" name="dialog" value=""
                            placeholder="Digite o que precisa..." />
                    </div>
                    <div class="cx-dialog-form-btn">
                        <button class="btn-enviar" type="submit"><img src="assets/images/enviar.png"
                                alt="enviar menssagem" title="enviar menssagem" /></button>
                    </div>
                </form>
            </footer>
        </article>
    </section>

    <script src="${contextPath}/js/dialogChatbot.js" type="text/javascript"></script>
    <script src="${contextPath}/js/chatbot.js" type="text/javascript"></script>
</body>
</html>