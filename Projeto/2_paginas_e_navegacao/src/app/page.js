import Link from "next/link"

export default function Home() {
  return (
     
      <main className="flex min-h-screen flex-col items-center justify-between p-32">
          { /*Aula 01 - Navegação*/}
       <h1>Home</h1>
       <Link href ="/sobre">Sobre</Link>

         {/* Aula 02 - Dados Dinâmicos */}
         <h1>Acessar posts</h1>
         <Link href= "/posts">Posts</Link>
         {/* Aula 03 - Parâmetros na URL */}
         <Link href = "/exemplo?parametro=abc">Página com parâmetros</Link>
      </main>
    
  );
}
