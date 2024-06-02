package br.com.caelum.vraptor.controller;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Result;
import javax.inject.Inject;

@Path("apostasfeitas")
@Controller
public class ApostasfeitasController {

    @Inject
    private Result result;

    @Get("")
    public void apostasfeitas() {
        // Encaminha para o JSP
        result.forwardTo("WEB-INF/jsp/apostasfeitas/apostasfeitas.jsp");
    }
}