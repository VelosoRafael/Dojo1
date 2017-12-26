Dado(/^que eu acesse o site da OrangeHrm$/) do
	visit 'http://opensource.demo.orangehrmlive.com/index.php/auth/login'
	fill_in('txtUsername',:with => 'Admin') 
	fill_in('txtPassword',:with => 'admin') 
	find(:xpath,'//*[@id="btnLogin"]').click #submit
end

E(/^que esteja na tela de Add Employee$/) do
	find(:xpath,'//*[@id="menu_pim_viewPimModule"]/b').click
	find(:xpath,'//*[@id="menu_pim_addEmployee"]').click
end

Quando(/^inserir os dados do usuario$/) do
	fill_in('firstName',:with => 'Test') 
	fill_in('middleName',:with => 'admin')
	fill_in('lastName',:with => 'User') 
	fill_in('employeeId', :with => '0259')
end

E(/^enviar os dados a serem salvos$/) do
	find(:id, 'btnSave').click
end

Entao(/^o novo usuário será cadastrado$/) do
	assert_text('Test admin User')
end

E(/^estará na tela de Personal Details$/) do
	assert_text('Personal Details')
end
