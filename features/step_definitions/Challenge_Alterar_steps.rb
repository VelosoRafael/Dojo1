Dado(/^que eu esteja no site da OrangeHrm$/) do
	visit 'http://opensource.demo.orangehrmlive.com/index.php/auth/login'
	fill_in('txtUsername',:with => 'Admin') 
	fill_in('txtPassword',:with => 'admin') 
	find(:xpath,'//*[@id="btnLogin"]').click #submit
end

E(/^que esteja no Employee List$/) do
	find(:xpath,'//*[@id="menu_pim_viewPimModule"]/b').click
end

Quando(/^pesquisar na lista de empregados$/) do
	fill_in('empsearch_id',:with => '0259')
	find(:id, 'searchBtn').click
end

E (/^clicar no usuário retornado$/) do
	find(:xpath,'//*[@id="resultTable"]/tbody/tr/td[2]/a').click
end

E(/^realizar as alterações deste usuario$/) do
	find(:id, 'btnSave').click
	fill_in('personal[txtEmpFirstName]',:with => 'User') 
	fill_in('personal[txtEmpMiddleName]',:with => 'Tester')
	fill_in('personal[txtEmpLastName]',:with => 'Admin')
	find(:id, 'btnSave').click 	
end

Entao(/^os dados serão atualizados$/) do
	assert_text('User Tester Admin')	
end