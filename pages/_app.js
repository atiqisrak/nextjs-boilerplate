import "@/styles/globals.css";

export default function App({ Component, pageProps }) {
  return (
    <div className="ViewContainer">
      <Component {...pageProps} />
    </div>
  );
}
