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
    
            <!-- Email input-->
            <div class="form-group">
              <label class="col-md-3 control-label" for="email">Email</label>
              <div class="col-md-9">
                <input id="email" name="email" type="text" placeholder="Digite o email do cliente" class="form-control">
              </div>
            </div>
    
            <!-- Message body -->
            <div class="form-group">
              <label class="col-md-3 control-label" for="message">Observações</label>
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