import Typed from 'typed.js';

const bannerText = document.getElementById('banner-typed-text')

const loadDynamicBannerText = () => {

  new Typed('#banner-typed-text', {
    strings: ["Cherche une ville", "Choisis une piscine", "Passe une bonne journée"],
    typeSpeed: 50,
    loop: true,
    attr: 'placeholder',
    bindInputFocusEvents: true,
    loop: true
  });
}

export { loadDynamicBannerText };
