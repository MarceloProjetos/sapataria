<%@ Page Language="C#" %>

<!-- #include virtual ="/header.inc" -->

	<div class="row">
      <div class="col-md-6 col-md-offset-3">
        <div class="well well-sm">
          <form class="form-horizontal" action="" method="post">
          <fieldset>
            <legend class="text-center">Cadastro de Cliente</legend>
    
            <!-- Name input-->
            <div class="form-group">
              <label class="col-md-3 control-label" for="name">Nome</label>
              <div class="col-md-9">
                <input id="name" name="name" type="text" placeholder="Digite o nome do cliente" class="form-control">
              </div>
            </div>
			
			<!-- Name CPF-->
            <div class="form-group">
              <label class="col-md-3 control-label" for="name">CPF</label>
              <div class="col-md-9">
                <input id="name" name="name" type="text" placeholder="Digite o CPF do cliente" class="form-control">
              </div>
            </div>
			    
            <!-- Name CNPJ-->
            <div class="form-group">
              <label class="col-md-3 control-label" for="name">CNPJ</label>
              <div class="col-md-9">
                <input id="name" name="name" type="text" placeholder="Digite o CNPJ do cliente" class="form-control">
              </div>
            </div>
			
			<!-- Name CEP-->
            <div class="form-group">
              <label class="col-md-3 control-label" for="name">CEP</label>
              <div class="col-md-9">
                <input id="name" name="name" type="text" placeholder="Digite o CEP do cliente" class="form-control">
              </div>
            </div>
			
						
			<!-- Name Numero-->
            <div class="form-group">
              <label class="col-md-2 control-label" for="name">Numero do Endereço</label>
              <div class="col-md-9">
                <input id="name" name="name" type="text" placeholder="Digite o Numero do endereço" class="form-control">
              </div>
            </div>
			    
            <!-- Message Complemento -->
            <div class="form-group">
              <label class="col-md-2 control-label" for="message">Complento do Endereço</label>
              <div class="col-md-9">
                <textarea class="form-control" id="message" name="message" placeholder="Digite o complemento do endereço aqui..." rows="2"></textarea>
              </div>
            </div>
			
            <!-- Email input-->
            <div class="form-group">
              <label class="col-md-2 control-label" for="email">Email</label>
              <div class="col-md-9">
                <input id="email" name="email" type="text" placeholder="Digite o email do cliente" class="form-control">
              </div>
            </div>
    
            <!-- Message body -->
            <div class="form-group">
              <label class="col-md-2 control-label" for="message">Observações</label>
              <div class="col-md-9">
                <textarea class="form-control" id="message" name="message" placeholder="Digite as observações aqui..." rows="5"></textarea>
              </div>
            </div>
    
            <!-- Form actions -->
            <div class="form-group">
              <div class="col-md-12 text-right">
                <button type="submit" class="btn btn-primary btn-lg">Gravar</button>
              </div>
            </div>
          </fieldset>
          </form>
        </div>
      </div>
	</div>


<!-- #include virtual ="/footer.inc" -->