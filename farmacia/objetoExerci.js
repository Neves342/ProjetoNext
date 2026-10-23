
function Livro (titulo, autor, numeroPg, paginaAtual) {
      this.titulo = titulo;
      this.autor = autor;
      this.numeroPg = numeroPg;
      this.paginaAtual = paginaAtual
      this.avancarPg = function (){
      this.paginaAtual++;
      this.paginaAtual--;}
}

console.log(paginaAtual)