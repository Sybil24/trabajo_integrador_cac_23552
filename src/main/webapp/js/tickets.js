console.log("archivo vinculado");

//Tomando datos del cliente
const cards    = document.querySelectorAll(".cards");
const inputs   = document.querySelectorAll("input");
const cantidad = document.querySelector("#cantidad");
const select   = document.querySelector("#categoria");
const resumen  = document.querySelector("#resumen");
const borrar   = document.querySelector("#borrar");
const span     = document.querySelector("#precioFinal");
const precio   = 200;


function validarCampo(valor, campo) {
  const estilosError = "0 0 5px 2px red"
  if (valor.trim().length <= 0 || valor <= 0) {
    campo.style.boxShadow = estilosError;
    return false;
  } else if (campo.name === 'nombre' && !isNaN(valor) || campo.name === 'apellido' && !isNaN(valor)) {
    alert(`Ingrese un ${campo.name} válido`);
    campo.style.boxShadow = estilosError;
    return false;
  } else if (campo.name === 'email' && !validarEmail(valor)) {
    alert('Ingrese un correo válido');
    campo.style.boxShadow = estilosError;
    return false;
  }
  else {
    campo.style.boxShadow = "";
    return true;
  }
}
function validarEmail(email) {
  const regexEmail = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
  if (regexEmail.test(email)) {
    return true; 
  } else {
    return false; 
  }
}
function aplicarDescuento(descuento) {
  precioFinal = (precio * cantidad.value) - ((precio * cantidad.value) * descuento)
  span.textContent = precioFinal;
}
function borrarResumen() {
  span.textContent = "";
}

//Acciones por separado
//Colocar valor de la tarjeta como option del select
cards.forEach((card) => {
  card.addEventListener("click", () => {
    select.value = card.id;
  })
})
//Valida cada input de forma individual
inputs.forEach((input) => {
  input.addEventListener("blur", (e) => {
    const valor = e.target;
    validarCampo(valor.value, input);
  });
});

//botones
borrar.addEventListener("click", borrarResumen);
resumen.addEventListener("click", () =>{
  let esValido   = true;

  inputs.forEach((input) => {
    if (!validarCampo(input.value, input)) {
      console.log('campos invalidos');
      esValido = false;
    }
  });
  if (esValido) {
    const selectValue = select.value;
    let descuento;
    switch (selectValue) {
      case 'Estudiante':
        console.log(1);
        descuento = 0.8;
        aplicarDescuento(descuento);
        break;
      case 'Trainee':
        descuento = 0.5;
        aplicarDescuento(descuento);
        break;
      case 'Junior':
        descuento = 0.15;
        aplicarDescuento(descuento);
        break;
      default:
        alert('Entrada no valida');
        break;
    }
  }
})





















