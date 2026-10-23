// const objeto_name = new ClassName (propriedade)

function contaBancaria (numeroConta, titular, saldo) {
    this.titulo = numeroConta;
    this.titular = titular;
    this.saldo = saldo;
    this.depositarValor = function(valor) {
        return this.saldo += valor
    };
    this.sacarValor = function(valor) {
        return this.saldo -= valor
    };
    this.consultarSaldo = function() {
        return console.log(this.saldo)
    }
};

const conta1 = new contaBancaria(154, "Fernando", 2000);


conta1.consultarSaldo()
conta1.depositarValor(300)
conta1.consultarSaldo()
conta1.sacarValor(100)
conta1.consultarSaldo()
