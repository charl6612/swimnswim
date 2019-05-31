

const arrivee = document.getElementById("rental_date_arrivee");

if (arrivee) {

  arrivee.addEventListener("input", (event) => {
    const arr = new Date(arrivee.value);
    const depart = document.getElementById("rental_date_depart");
    depart.addEventListener("input", (event) => {
      const dep = new Date(depart.value);
      const duration = dateDiff(arr, dep).day;
      const dayprice = document.getElementById("day_price");
      priceday = dayprice.innerHTML;
      totalprice = duration * priceday;
      const totalpricewrite = document.getElementById("prix-total");
      totalpricewrite.innerHTML = `<span data-totalprice=${totalprice}>Prix total = ${totalprice}€</span>`;
    });
  });
}

function dateDiff(date1, date2) {
  var diff = {}                           // Initialisation du retour
  var tmp = date2 - date1;

  tmp = Math.floor(tmp / 1000);             // Nombre de secondes entre les 2 dates
  diff.sec = tmp % 60;                    // Extraction du nombre de secondes

  tmp = Math.floor((tmp - diff.sec) / 60);    // Nombre de minutes (partie entière)
  diff.min = tmp % 60;                    // Extraction du nombre de minutes

  tmp = Math.floor((tmp - diff.min) / 60);    // Nombre d'heures (entières)
  diff.hour = tmp % 24;                   // Extraction du nombre d'heures

  tmp = Math.floor((tmp - diff.hour) / 24);   // Nombre de jours restants
  diff.day = tmp;

  return diff;
}
