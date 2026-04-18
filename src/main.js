import './style.css';

window.addEventListener('scroll', function() {
    const navbar = document.getElementById('navbar');
    if (window.scrollY > 50) {
        navbar.classList.add('shadow-md', 'bg-white/90');
        navbar.classList.remove('glass');
    } else {
        navbar.classList.remove('shadow-md', 'bg-white/90');
        navbar.classList.add('glass');
    }
});
