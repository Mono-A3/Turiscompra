const form = document.querySelector('#frmContactos');
const nombre = document.querySelector('#nombre');
const email = document.querySelector('#email');
let mensaje;
document.addEventListener("DOMContentLoaded", function () {
    ClassicEditor.create( document.querySelector('#message'), {
        toolbar: {
            items: [
                'heading', '|',
                'bold', 'italic', 'strikethrough', 'underline', 'code', 'subscript', 'superscript', 'removeFormat', '|',
                'bulletedList', 'numberedList', 'todoList', '|',
                'outdent', 'indent', '|',
                'undo', 'redo',
                'fontSize', 'fontFamily', 'fontColor', 'fontBackgroundColor', 'highlight', '|',
                'alignment', '|',
                'link', 'insertImage', 'blockQuote', 'insertTable', 'mediaEmbed', 'codeBlock', 'htmlEmbed', '|',
                'specialCharacters', 'horizontalLine', 'pageBreak', '|',
                'textPartLanguage', '|',
                'sourceEditing'
            ],
            shouldNotGroupWhenFull: true
        },
        } )
        .then( newEditor => {
            mensaje = newEditor;
        } )
        .catch( error => {
            console.error( error );
        } );

    form.addEventListener('submit', function (e) {
        e.preventDefault();
        let data = new FormData();
        data.append('nombre', nombre.value);
        data.append('email', email.value);
        data.append('mensaje', mensaje.getData());

        const url = base_url + 'contactos/index';
        const http = new XMLHttpRequest();
        http.open('POST', url, true);
        http.send(data);
        http.onreadystatechange = function () {
            if (this.readyState == 4 && this.status == 200) {
                const res = JSON.parse(this.responseText);
                Swal.fire(
                    'Aviso?',
                    res.msg,
                    res.icono
                )
            }
        }
    });
});
