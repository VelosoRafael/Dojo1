Dado(/^que eu esteja na pagina principal da ToolsQA$/) do
	visit 'http://demoqa.com/'
end

Quando(/^pressionar o botao de registration$/) do
	find(:xpath, "//*[@id='menu-item-374']/a").click()
end

E(/^preencher os campos necessários$/) do
	fill_in "first_name",:with => "Test" #Last name
	fill_in "last_name", :with => "Test User" #First name
	find(:xpath, "//*[@id='pie_register']/li[2]/div/div/input[1]").click()
	find(:xpath, "//*[@id='pie_register']/li[3]/div/div/input[2]").click()
	select('Brazil',:from => 'dropdown_7') #Country
	select('6',:from => 'date_8[date][mm]') #Month
	select('2',:from => 'date_8[date][dd]') #Day
	select('1994',:from => 'date_8[date][yy]') #Year
	fill_in "phone_9", :with => "5511912345678" #Phone-number
	fill_in "username", :with => "veloso.rafael945" #Username
	fill_in "e_mail", :with => "rafael.veloso2@inmetrics.com.br" #E-mail
	fill_in "password", :with => "Test@1357#bcz" #Password
	fill_in "confirm_password_password_2", :with => "Test@1357#bcz" #Confirm Password
end

E(/^enviar os dados de cadastro$/) do
	find(:xpath, "//*[@id='pie_register']/li[14]/div/input").click()
end

Entao(/^terei um novo user criado$/) do
	assert_text('Thank you for your registration')
end