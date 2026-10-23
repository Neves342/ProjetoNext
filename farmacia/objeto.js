let carro = {
    marca: 'byd',
    modelo: 'dolphin mini',
    cor: 'cinza',
    km: 3000,
    acelerar: function(andou) {
      return this.km += andou;
 },
 

}

console.log(carro.km)
// carro.acelerar(3000)
console.log(carro.km)