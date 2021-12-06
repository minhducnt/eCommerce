document.addEventListener("DOMContentLoaded",function (){
    let selectday = document.querySelectorAll(".day1");

    selectday.addEventListener("selected", function (){
        for(let i=0;i<selectday.length;i++)
        {
            this.removeAttribute('selected');
        }
        this.setAttribute('selected', true);
    })

})

document.addEventListener("DOMContentLoaded",function (){
    let showForm = document.querySelectorAll(".formresult");
    let showadd = document.querySelector("#a");
    let addadress = document.querySelector("#addadress");
    showadd.addEventListener("click", function (){
        for(let i=0;i<showForm.length;i++)
        {
            showForm[i].classList.add('disableForm');
        }
        addadress.classList.remove('disableForm');
    })

})
//dropdown
const buttonshowDropdown = document.querySelector(".buttonDropdown");
const showdropdown = document.querySelector(".UserHeader_UserDropDown");
buttonshowDropdown.addEventListener("click", function (){
    showdropdown.classList.toggle('disableForm');
})
var btnCust = '<button type="button" class="btn btn-secondary" title="Add picture tags" ' +
    'onclick="alert(\'Call your custom code here.\')">' +
    '<i class="bi-tag"></i>' +
    '</button>';
$("#avatar-1").fileinput({
    overwriteInitial: true,
    maxFileSize: 1500,
    showClose: false,
    showCaption: false,
    browseLabel: '',
    removeLabel: '',
    browseIcon: '<i class="bi-folder2-open"></i>',
    removeIcon: '<i class="bi-x-lg"></i>',
    removeTitle: 'Cancel or reset changes',
    elErrorContainer: '#kv-avatar-errors-1',
    msgErrorClass: 'alert alert-block alert-danger',
    defaultPreviewContent: '<img src="/samples/default-avatar-male.png" alt="Your Avatar">',
    layoutTemplates: {main2: '{preview} ' +  btnCust + ' {remove} {browse}'},
    allowedFileExtensions: ["jpg", "png", "gif"]
});