
import Link from "next/link"

const PostsPage = () => {
     const postsIds = [1, 2, 3]

     // [{id: 1, title: "alguma coisa", categorias: []}] 

  return (
    <div>

     <h1>Blog</h1>
      <ul>
          {postsIds.map((id) => (
            <li key={id}>
                <Link href= {`/posts/${id}`}>Ver post {id}</Link>
            </li>

          ))}
      </ul>
    </div>
  )
}

export default PostsPage