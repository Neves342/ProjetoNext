const objeto_name = new ClassName (propriedade)

function termometro (marca, cor, material, toxico, temperaturaCelsius) {
    this.marca = marca;
    this.cor = cor;
    this.material = material;
    this.toxico = toxico;
    this.temperaturaCelsius = temperaturaCelsius;
    this.temperaturaKelvin = function(temperatura) {
         this.temperaturaCelsius = (T(C) * 9)/5 + 32 
    }
    this.temperaturaFahrenheit = function(temperatura) {

    }

}


const termometro1 = new termometro("Selga", "Gelo", "vidro", "sim")

termometro1.temperaturaKelvin()
termometro1.temperaturaFahrenheit()