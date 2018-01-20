import swal from 'sweetalert';

function bindSweetAlertButtonDemo() {
  swal({
      title: "Thanks/Köszönöm/Merci/Grazie.",
      icon: "success"
    });
  document.getElementById('sweet-alert-demo').addEventListener('click', () => {
    swal({
      title: "Thanks/Köszönöm/Merci/Grazie",
      icon: "success"
    })
  });
}

export { bindSweetAlertButtonDemo };
