
let cachorro = {
    raca: 'Dálmata',
    porte: 'grande',
    peso: '52 a 59kg',
    despesas: 7000,
    alimentacao: function() {
     this.despesas -= 5850
    },
    medicacao: function() {
     this.despesas -= 180
    },
    brinquedos: function() {
     this.despesas -= 440
    },
    
} 

console.log("Cachorro escolhido:", cachorro["raca"], "de porte",cachorro["porte"], "de no mínimo",cachorro["peso"])
console.log("Despesas: R$", cachorro.despesas)

cachorro.alimentacao()
console.log("Alimentação: R$", cachorro.despesas)

cachorro.medicacao()
console.log("Custo de Medicação: R$", cachorro.despesas)


cachorro.brinquedos()
console.log("Brinquedos: R$", cachorro.despesas)

