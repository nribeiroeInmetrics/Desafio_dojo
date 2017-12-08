Dado("que eu esteja no site ORANGEHRM") do
  visit'http://opensource.demo.orangehrmlive.com/'
end

Quando("acessar minha conta") do
  fill_in('txtUsername',:with => 'admin')
  fill_in('txtPassword',:with => 'admin')
  find(:xpath, '//*[@id="btnLogin"]').click
end

Então("vou editar meu cadastro no site") do
	find(:xpath, '//*[@id="menu_pim_viewPimModule"]/b').click
	fill_in('empsearch[employee_name][empName]',:with => 'Natalia')
	find(:xpath, '//*[@id="searchBtn"]').click
	find(:xpath, '//*[@id="resultTable"]/tbody/tr/td[2]/a').click
	find(:xpath, '//*[@id="btnSave"]').click	
	fill_in('personal[txtOtherID]',:with => '00123')
	fill_in('personal[txtLicenNo]',:with => '00124')
	fill_in('personal[txtLicExpDate]',:with => '16021997')
	find(:xpath, '//*[@id="frmEmpPersonalDetails"]/fieldset/ol[3]/li[1]/ul/li[2]/label').click
	select('Single',:from => 'personal[cmbMarital]')
	select('Brazilian',:from => 'personal[cmbNation]')
    find(:xpath, '//*[@id="btnSave"]').click
end