module.exports = {
    plugins: [
      'tailwindcss',
      'autoprefixer',
    ],
  };
  // tailwind.config.js
module.exports = {
    content: [
      './app/**/*.{js,ts,jsx,tsx}', // Certifique-se de apontar para a pasta correta
      './pages/**/*.{js,ts,jsx,tsx}', // Certifique-se de apontar para a pasta correta
    ],
    theme: {
      extend: {},
    },
    plugins: [],
  };
  