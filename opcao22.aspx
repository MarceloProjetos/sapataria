<%@ Page Language="C#" %>

<!-- #include virtual ="/header.inc" -->

</div>
<div class="container">

      <form class="form-signin" role="form" method=post novalidate action="login.aspx">
        <h2 class="form-signin-heading">Momento torsor</h2>
		<h2 class="form-signin-alert"></h2>
        <input type="number" name=RPM class="form-control" placeholder="Digite a RPM do Motor">
        <input type="number" name=potencia class="form-control" placeholder="Potencia do Motor" required>
        <label class="radio1">
          <input type="radio"> Potencia em HP?
        </label>
		<label class="radio1">
          <input type="radio"> Potencia em CV?
        </label>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Calcular</button>
		<input type="number" disabled name=Momento class="form-control" placeholder="Momentor torsor">
		<label class="radio2">
          <input type="radio"> Resultado em kgf
        </label>
		<label class="radio2">
          <input type="radio"> Resultado em Newton
        </label>
		<div class="row">
      </form>

	<!--mt=71620*(N/rpm) formula
	mt resposta em kgf e 1 Kgf = 9.8 N
	N = potencia pode ser em 1 cv=735 Watts ou 1 hp=746watts então -> cv = 0,9863 hp = 735,5 W	-->


<!-- #include virtual ="/footer.inc" -->