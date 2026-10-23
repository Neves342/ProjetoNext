function ClassName(propriedade) {
    this.propriedade= propriedade
}

const objeto_name = new ClassName (propriedade)

function Lampada(temperatura, ambiente,situacao) {
    this.temperatura = temperatura; //funçaõ se separa em ponto e vrigula ;
    this.ambiente = ambiente;
    this.situacao = situacao;
    this.interruptor = function() {
         if (this.situacao === true) {
            this.situacao = false
        } else {
            this.situacao = true
    }

}}
       
const LampadaSala = new Lampada(6000, "sala de estar", true)
const LampadaCorredor = new Lampada(8000, "corredor", false)

console.log(LampadaSala.situacao, LampadaCorredor)
console.log(LampadaCorredor.ambiente, LampadaCorredor.situacao)
LampadaSala.interruptor()
LampadaCorredor.interruptoro()
console.log(Lampada.ambiente)
        
    
    
    