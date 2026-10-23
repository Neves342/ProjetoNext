const objeto_name = new ClassName (propriedade)

function Aluno (nome, dataNascimento, peso, altura) {
    this.nome = nome;
    this.dataNascimento = dataNascimento;
    this.peso = peso;
    this.altura = altura;
    this.calcularIdade = function(data) {
       return this.dataNascimento.Date().getFullYear() -  ano

    }
    this.calcularImc = function(imc) {
        this.altura = this.altura / 100
        return this.peso / (this.altura * this.altura)
     }
    this.mostrarDados = function() {
        console.log(this.nome)
    }
}

const Aluno1 = new Aluno("Lucas", "22/12/2006", 86, 1.95)

Aluno1.calcularIdade()
Aluno1.calcularImc()
Aluno1.mostrarDados()






