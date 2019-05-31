import Typed from 'typed.js';

const bannerText = document.getElementById('pool_address')

const loadDynamicBannerText = () => {

  if (location.pathname == "/") {
    new Typed('#pool_address', {
      strings: ["Cherche une ville", "Choisis une piscine", "Passe une bonne journée"],
      typeSpeed: 50,
      loop: true,
      attr: 'placeholder',
      bindInputFocusEvents: true,
      loop: true
    });
  }
}

export { loadDynamicBannerText };