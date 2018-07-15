Given(/^Abierta la pagina www.viajesfallabella.cl$/) do
    @VuelosPage = VuelosPage.new(@browser)
    @VuelosPage.visit("https://www.viajesfalabella.cl")
end  
When(/^Click en Vuelos$/) do
    @VuelosPage.clickVuelos
end 
And(/^Click en Solo Ida$/) do
    @VuelosPage.clickSoloIda
end
And(/^Click en Ida y Vuelta$/) do
    @VuelosPage.clickIdaVuelta
end
Then(/^Inserta <Origen>$/) do
    @VuelosPage.inserta <Origen>   
end
And(/^Click en Destino$/)do
    @VuelosPage.clickDestino
end
And(/^Inserta <Destino>$/)do
    @VuelosPage.insertaDestino <Destino>
    sleep 2
end
Then(/^Click en Fecha Ida$/) do
    @VuelosPage.clickFechaIda
    sleep 2
end
And(/^Click en Fecha de Ida Seleccionada$/) do
    @VuelosPage.selectFechaIda
end
Then(/^Click en Fecha de Regreso$/) do
    @VuelosPage.clickFechaReg
    sleep 2
end
And(/^Click en Fecha de Regreso Seleccionada$/) do
    @VuelosPage.selectFechaReg
end
Then(/^Selecciona Cantidad de Adultos$/) do
    @VuelosPage.selectAdultos
end
And(/^Selecciona Niños$/) do
    @VuelosPage.selectNinos
end
And(/^Selecciona Infante$/) do
    @VuelosPage.selectInfan
end
Then(/^Click en Buscar$/) do
   @VuelosPage.clickBuscar
end
Then(/^Verificar Pagina de resultados$/)do
    @VuelosPage.verificarResult
end