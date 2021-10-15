package br.edu.ifpr.app.servlets;

import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/processa-form")
public class AppServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String nomeParam = req.getParameter("campo_nome");
		
		Integer idadeParam = Integer.parseInt(req.getParameter("campo_idade"));
		
		
		String nascimentoParam = req.getParameter("campo_data_nascimento");
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		LocalDate dateNascimento = LocalDate.parse(nascimentoParam, formatter);
		
		String complementoParam = req.getParameter("complemento");
		
		String[] filmes = req.getParameterValues("filmes");
		
		
		if(idadeParam <= 1 || idadeParam > 99) {
			
			throw new IllegalArgumentException("a idade não no intervalo aceitável");
			
		}
		
		
		System.out.println("nome: " + nomeParam);
		System.out.println("idade: " + idadeParam);
		System.out.println("data nascimento	: " + dateNascimento);
		System.out.println("complmento: " + complementoParam);
		System.out.println("filmes: " + filmes[0]);
		
		
		
		
	}
	

}
