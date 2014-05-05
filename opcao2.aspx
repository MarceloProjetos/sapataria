<%@ Page Language="C#" %>

<!-- #include virtual ="/header.inc" -->

</div>

<div class="container">

<div class="row">
      <div class="col-md-6 col-md-offset-3">
        <div class="well well-sm">
          <form class="form-horizontal" role="form" id="formCalc">
          <fieldset>
            <legend class="text-center">Momento tor&ccedilor</legend>
    
            <!-- RPM input-->
            <div class="form-group">
              <label class="col-md-3 control-label" for="name">RPM</label>
              <div class="col-md-9">
                <input type="number" id="RPM" class="form-control" placeholder="Digite a RPM do Motor">
              </div>
            </div>
    
            <!-- Potencia input-->
            <div class="form-group">
              <label class="col-md-3 control-label" for="email">Potencia</label>
              <div class="col-md-9">
                <input type="number" name=potencia class="form-control" placeholder="Potencia do Motor">
              <label class="radio1">
					<input type="radio" name=x > Potencia em HP?
				</label>
				<label class="radio1">
					<input type="radio" name=x > Potencia em CV?
				</label>
			  </div>
            </div>
			
			<!-- Calcular-->
            <div class="form-group">
              <label class="col-md-3 control-label" for="name">Momento</label>
              <div class="col-md-9">
                <button class="btn btn-lg btn-primary btn-block" id="btn_calcular" >Calcular</button>
              </div>
            </div>
			
			<!-- Resultado-->
            <div class="form-group">
              <label class="col-md-3 control-label" for="name">Resposta</label>
              <div class="col-md-9">
                <input type="number" id="resposta" disabled name=Momento class="form-control" placeholder="Momentor torsor">
				<label class="radio2">
				  <input type="radio" name=y> Resultado em kgf
				</label>
				<label class="radio2">
				  <input type="radio" name=y> Resultado em Newton
				</label>
              </div>
            </div>
			
          </fieldset>
          </form>
        </div>
      </div>
	</div>
<!-- #include virtual ="/footer.inc" -->