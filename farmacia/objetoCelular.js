let celular = {
    marca: 'Samsung',
    modelo:  'Galaxy A22',
    sistema_operacional: 'Android',
    situacao_da_bateria: 0.5,
    carreagar_bateria : function(){
        this.situacao_da_bateria += 0.3
    },
    descarregar_bateria: function() {
        this.situacao_da_bateria -= 0.1
    },
    receber_ligacao: function() {
        console.log('trim, trim');
         
    }
    
}

console.log(celular.situacao_da_bateria)
celular.carreagar_bateria()
console.log(celular.situacao_da_bateria)


celular.descarregar_bateria()
console.log(celular.situacao_da_bateria)

celular.receber_ligacao()