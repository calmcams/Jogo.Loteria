package br.com.caelum.vraptor.controller;

import javax.inject.Inject;
import javax.persistence.EntityManager;
import javax.validation.Valid;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.model.Usuario;
import br.com.caelum.vraptor.validator.Validator;

@Path("cadastrar")
@Controller
public class CadastrarController {
	
	@Inject EntityManager em;
	@Inject Result result;
	@Inject Validator validator;
	
	@Get("")
	public void cadastrar() {
		
	}
	
	@Post("salvausuario")
	public void salvaUsuario(@Valid Usuario usuario) {
		//se der erro, direciona para Cadastrar - 
		validator.onErrorRedirectTo(this).cadastrar();
		
		em.persist(usuario);
		result.redirectTo(DashboardController.class).dashboard();
	}
}
