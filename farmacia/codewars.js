function spinWords(string){
  let resultado = []
  palavras = string.split(' ')
  console.log(palavras)
  
  
  for (let i in palavras){
    console.log(palavras[i].length)
    
    
    if (palavras[i].length > 5){
      let word = palavras[i].split('').reverse().join('')
      console.log(word)
      
      resultado.push(word)
    }
    
    
  }
  console.log(resultado)
  return resultado.join(' ')
}