/** @type {import('tailwindcss').Config} */
export default {
  content: [
    "./index.html",
    "./src/**/*.{js,ts,jsx,tsx}",
  ],
  theme: {
    extend: {
      colors: {
        primary: '#0ea5e9',
        secondary: '#0284c7',
        accent: '#e0f2fe',
        dark: '#0f172a',
      }
    },
  },
  plugins: [],
}
