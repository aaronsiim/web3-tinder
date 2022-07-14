import '../styles/globals.css'
import { TinderProvider } from '../context/TinderContext'
import { MoralisProvider } from 'react-moralis'

function MyApp({ Component, pageProps }) {
  return (
    <MoralisProvider
      serverUrl='https://fpve7vyvvtua.usemoralis.com:2053/server'
      appId='yRJygqzYrS47Co8PUgWEllOCW6MdBnWAUKWphAap'
    >
      <TinderProvider>
        return <Component {...pageProps} />
      </TinderProvider>
    </MoralisProvider>
  )
}

export default MyApp
