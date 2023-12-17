<%@page import="ar.com.integrador.domain.Orador"%>
<%@page import="java.util.List"%>


<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Trabajo Final Integrador</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
      crossorigin="anonymous"
    />
    <link rel="stylesheet" href="./css/styles.css" />
    <!--      https://www.flaticon.es/iconos-gratis/aterrizaje       -->
    <link rel="icon" href="./assets/img/icon.png" />
    <link
      href="https://fonts.googleapis.com/css2?family=Noto+Sans+Shavian&family=Roboto+Slab:wght@700&family=Roboto:wght@300&display=swap"
      rel="stylesheet"
    />
  </head>

  <body>
    
    <jsp:include page="header.jsp"/>
    <jsp:include page="portada.jsp"/>
     
    <main class="main">
      <section class="section-oradores" id="oradores">
        <h2 class="title-oradores">
          <span class="span">conoce a los </span>oradores
        </h2>
        <div class="container-cards-index">
          <article class="cards-index">
            <img
              src="./assets/img/steve.jpg"
              alt="Imagen de Steve sosteniendo el primer Iphone"
              class="img-cards"
            />
            <div class="container-info-cards">
              <h4 class="name-tech" class="">
                <span class="tech-yellow">JavaScript</span
                ><span class="tech-light-blue">React</span>
              </h4>
              <h2 class="name-oradores">Steve Jobs</h2>
              <p class="oradores_resume">
                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vitae
                beatae, dignissimos optio voluptatum quas aperiam nisi odit?
                Delectus, necessitatibus minus! Saepe nam ullam qui atque!
                Repellat omnis maxime architecto magni?
              </p>
            </div>
          </article>

          <article class="cards-index">
            <img
              src="./assets/img/bill.jpg"
              alt="Imagen de Bill Gates"
              class="img-cards"
            />
            <div class="container-info-cards">
              <h4 class="name-tech">
                <span class="tech-yellow">JavaScript</span
                ><span class="tech-light-blue">React</span>
              </h4>
              <h2 class="name-oradores">Bill Gates</h2>
              <p class="oradores-resume">
                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vitae
                beatae, dignissimos optio voluptatum quas aperiam nisi odit?
                Delectus, necessitatibus minus! Saepe nam ullam qui atque!
                Repellat omnis maxime architecto magni?
              </p>
            </div>
          </article>

          <article class="cards-index">
            <img
              src="./assets/img/ada.jpeg"
              alt="Imagen de Ada Lovelace"
              class="img-cards"
            />
            <div class="container-info-cards">
              <h4 class="name-tech">
                <span class="tech-grey">Negocios</span
                ><span class="tech-red">Startups</span>
              </h4>
              <h2 class="name-oradores">Ada Lovelace</h2>
              <p class="oradores-resume">
                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vitae
                beatae, dignissimos optio voluptatum quas aperiam nisi odit?
                Delectus, necessitatibus minus! Saepe nam ullam qui atque!
                Repellat omnis maxime architecto magni?
              </p>
            </div>
          </article>
        </div>
      </section>
      
      <section class="container mb-4 text-center" id="restoOradores">
		<a class="btn btn-outline-success" href="<%=request.getContextPath()%>/FindAllOradorController">Conoce al resto de los ORADORES</a>
		
	  </section>

      <section class="section-tour" id="tour">
        <article class="img-tour"></article>
        <article class="info-tour">
          <h2 class="title-tour">Bs As - Octubre</h2>
          <p class="description-tour">
            Buenos Aires es la provincia y localidad m�s grande del estado de
            Argentina, en los Estados Unidos. Honolulu es la m�s sure�a de entre
            las principales ciudades estadounidenses. Aunque el nombre de
            Honolulu se refiere al �rea urbana en la costa sureste de la isla de
            Oahu, la ciudad y el condado de Honolulu han formado una
            ciudad-condado consolidad que cubre toda la ciudad (aproximadamente
            600km<sup>2</sup> de superficie)
          </p>
          <a href="#" class="btn-tour">Conoc� m�s</a>
        </article>
      </section>

      <section class="section-form" id="form">
        <h2 class="title-form">
          <span class="span">Convi�rtete en un </span>orador
        </h2>
        <p class="info-form">
          An�tate como orador para dar una <u>charla ignite</u>. Cu�ntanos de
          qu� quieres hablar!
        </p>
        <form action="CreateOradorController" class="form-index" method="post">
          <div class="container-inputs">
            <input
              type="text"
              placeholder="Nombre"
              class="input-form"
              name="nombre"
              required
            />
            <input
              type="text"
              placeholder="Apellido"
              name="apellido"
              class="input-form"
              required
            />
          </div>
          <div class="container-inputs">

            <input 
            type="email" 
            class="input-form" 
            name="mail" 
            placeholder="Correo"
            />
            <input 
            type="text" 
            class="input-form" 
            name="fecha"
            placeholder="DD/MM/AAAA" 
            />
          </div>
          <textarea
            cols="30"
            rows="4"
            placeholder="Sobre qu� quieres hablar?"
            class="text-form"
            name="tema"
          ></textarea>
          <span class="info-form info-2"
            >Recuerda incluir un t�tulo para tu charla</span
          >
          <input type="submit" value="Enviar" class="input-form-submit" />
        </form>
      </section>
    </main>

    <jsp:include page="footer.jsp"/>
  
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
