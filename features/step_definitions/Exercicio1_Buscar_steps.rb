Dado(/^que esteja na home da Inmetrics$/) do
	visit 'http://www.inmetrics.com.br/'
end

Quando(/^acessar a sessão de Quem somos$/) do
	find(:xpath, "//*[@id='text-3']/div[2]/nav/ul/li[1]/a").click()
end

Entao(/^apresentara a quantidade de tempo no mercado$/) do
	assert_text('Atendemos mais de 100 empresas dos mais variados segmentos de negócios, tais como bancos, meios de pagamento, telecom, seguradoras, varejo, indústria e energia.')
end