class VuelosPage
  attr_accessor 
    :vuelosMenu
    :soloIda
    :idaVuelta
    :origen
    :destino
    :fechaIda
    :fechaReg
    :calFechaIda
    :calFechaReg
    :cantAdultos
    :cantNinos
    :cantInfan
    :btnBuscar
    :vueloslabel
    :cantAdultSelect
    :cantNinoSelect
    :cantInfanSelect

  def initialize(browser)
    @browser = browser
    @vuelosMenu = browser.element(:xpath => "/html/body/header/div/div[3]/nav/ul/li[1]/a")
    @soloIda = browser.element(:xpath => "/html/body/div[1]/section[3]/div[1]/div/div/ul[2]/li[1]/form/div[1]/div/label[2]/input")
    @idaVuelta = browser.element(:xpath => "/html/body/div[1]/section[3]/div[1]/div/div/ul[2]/li[1]/form/div[1]/div/label[1]/input")
    @origen = browser.text_field(:id => "txtOrigenVuelo")
    @destino = browser.text_field(:id => "txtDestinoVuelo")
    @fechaIda = browser.text_field(:id => "fechaDeSalida")
    @btnBuscar = browser.element(:xpath => "/html/body/div[1]/section[3]/div[1]/div/div/ul[2]/li[1]/form/div[4]/div[2]/div/button")
    @calFechaIda = browser.element(:xpath => "/html/body/div[5]/div[1]/div[2]/table/tbody/tr[1]/td[3]")
    @calFechaReg = browser.element(:xpath => "/html/body/div[6]/div[1]/div[2]/table/tbody/tr[5]/td[5]")
    @vueloslabel = browser.element(:xpath => "/html/body/main/div/aside/section[1]/div[1]/h2")
    @fechaReg = browser.text_field(:id => "fechaRegreso")
    @cantAdultos = browser.element(:xpath => "/html/body/div[1]/section[3]/div[1]/div/div/ul[2]/li[1]/form/div[4]/div[1]/div/div[1]/div/select")
    @cantNinos = browser.element(:xpath => "/html/body/div[1]/section[3]/div[1]/div/div/ul[2]/li[1]/form/div[4]/div[1]/div/div[2]/div/select")
    @cantInfan = browser.element(:xpath => "/html/body/div[1]/section[3]/div[1]/div/div/ul[2]/li[1]/form/div[4]/div[1]/div/div[3]/div/select")
    @cantAdultSelect = browser.element(:xpath => "/html/body/div[1]/section[3]/div[1]/div/div/ul[2]/li[1]/form/div[4]/div[1]/div/div[1]/div/select/option[1]")
    @cantNinoSelect = browser.element(:xpath => "/html/body/div[1]/section[3]/div[1]/div/div/ul[2]/li[1]/form/div[4]/div[1]/div/div[2]/div/select/option[2]")
    @cantInfanSelect = browser.element(:xpath => "/html/body/div[1]/section[3]/div[1]/div/div/ul[2]/li[1]/form/div[4]/div[1]/div/div[3]/div/select/option[2]")
  end
  def visit(url)
    @browser.goto url
  end
  def clickVuelos
    @vuelosMenu.click
  end
  def clickSoloIda
    @soloIda.click
  end
  def clickIdaVuelta
    @idaVuelta.click
  end
  def insertaOrigen(origen)
    @origen.set origen
    sleep 2
  end
  def clickDestino
    @destino.click
  end
  def insertaDestino(destino)
    @destino.set destino
    sleep 2
  end
  def clickBuscar
    @btnBuscar.click
    sleep 4
  end
  def clickFechaIda
    @fechaIda.click
  end
  def selectFechaIda
    @calFechaIda.click
  end
  def clickFechaReg
    @fechaReg.click
  end
  def selectFechaReg
    @calFechaReg.click
  end 
  def selectAdultos
    @cantAdultos.click
    sleep 2
    @cantAdultSelect.click
  end
  def selectNinos
    @cantNinos.click
    sleep 2
    @cantNinoSelect.click
  end
  def selectInfan
    @cantInfan.click
    sleep 2
    @cantInfanSelect.click
  end
  def verificarResult
    @vueloslabel.wait_until_present
  end
end