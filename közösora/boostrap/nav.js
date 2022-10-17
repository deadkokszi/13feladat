const nav =  `
<nav class="navbar navbar-expand-lg navbar-light bg-light">
<a class="navbar-brand" href="#">Menük</a>
<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
  <span class="navbar-toggler-icon"></span>
</button>
<div class="collapse navbar-collapse" id="navbarNav">
  <ul class="navbar-nav">
    <li class="nav-item active">
      <a class="nav-link" href="yes.html">főoldal<span class="sr-only">(current)</span></a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="1.html">Számoló</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="2.html">Téglalap</a>
    </li>
    <li class="nav-item">
      <a class="nav-link " href="3.html">Kép</a>
    </li>
  </ul>
</div>
</nav>
`
document.body.insertAdjacentHTML("beforebegin",nav)