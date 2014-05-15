<%@ Page Language="C#" %>

<!-- #include virtual ="/header.inc" -->

	<div class="row">
      <div class="col-md-6 col-md-offset-3">
        <div class="well well-sm">
          <form class="form-horizontal" action="" method="post">
          <fieldset>
            <legend class="text-center">Cadastro de Produtos</legend>
    
            <!-- Codigo-->
            <div class="form-group">
              <label class="col-md-3 control-label" for="name">Código</label>
              <div class="col-md-9">
                <input id="name" name="name" type="text" placeholder="Digite o Código do produto" class="form-control">
              </div>
            </div>
			
			<!-- Modelo-->
            <div class="form-group">
              <label class="col-md-3 control-label" for="name">Modelo</label>
              <div class="col-md-9">
                <input id="name" name="name" type="text" placeholder="Modelo do produto" class="form-control">
              </div>
            </div>
			    
            <!-- Descricao-->
            <div class="form-group">
              <label class="col-md-3 control-label" for="name">Descrição</label>
              <div class="col-md-9">
                <input id="name" name="name" type="text" placeholder="Descrição" class="form-control">
              </div>
            </div>
			
			<!-- Tamanho-->
            <div class="form-group">
              <label class="col-md-3 control-label" for="name">Tamanho</label>
              <div class="col-md-9">
                <input id="name" name="name" type="text" placeholder="Tamanho do produto" class="form-control">
              </div>
            </div>
			
						
			<!-- Name Numero-->
            <div class="form-group">
              <label class="col-md-2 control-label" for="name">Numero</label>
              <div class="col-md-9">
                <input id="name" name="name" type="text" placeholder="Numero do calçado" class="form-control">
				<label class="radio1">
					<input type="radio" name=x > Estoque
				</label>
				<label class="radio1">
					<input type="radio" name=x > Descontinuado
				</label>
              </div>
            </div>
			    
            <!-- Observações -->
            <div class="form-group">
              <label class="col-md-2 control-label" for="message">Observações</label>
              <div class="col-md-9">
                <textarea class="form-control" id="message" name="message" placeholder="Descricao aqui..." rows="2"></textarea>
              </div>
            </div>
			
            <!-- Preço de Compra-->
            <div class="form-group">
              <label class="col-md-2 control-label" for="email">Preço de Compra</label>
              <div class="col-md-9">
                <input id="email" name="email" type="text" placeholder="Preço de Compra" class="form-control">
              </div>
            </div>
    
            <!-- Preço de venda-->
            <div class="form-group">
              <label class="col-md-2 control-label" for="email">Preço de venda</label>
              <div class="col-md-9">
                <input id="email" name="email" type="text" placeholder="Preço de venda" class="form-control">
              </div>
            </div>
    
            <!-- Form actions -->
            <div class="form-group">
              <div class="col-md-12 text-right">
                <button type="submit" class="btn btn-primary btn-lg">Gravar</button>
              </div>
            </div>
			
			<!-- Form actions -->
            <div class="form-group">
              <div class="col-md-10 text-right">
                <button type="submit" class="btn btn-primary btn-lg">Procurar</button>
              </div>
            </div>
			
          </fieldset>
          </form>
        </div>
      </div>
	</div>


<!-- #include virtual ="/footer.inc" -->