Feature: Buscar Vuelos
  Scenario Outline: Buscar Vuelos Ida y Vuelta
    Given Abierta la pagina www.viajesfallabella.cl
    When Click en Vuelos
    And Click en Ida y Vuelta
    Then Inserta Origen
    And Click en Destino 
    And Inserta Destino
    Then Click en Fecha Ida
    And Click en Fecha de Ida Seleccionada
    Then Click en Fecha de Regreso
    And Click en Fecha de Regreso Seleccionada
    Then Selecciona Cantidad de Adultos
    And Selecciona Niños
    And Selecciona Infante
    Then Click en Buscar
    Then Verificar Pagina de resultados

  Scenario: Buscar Vuelos Solo Ida
      Given Abierta la pagina www.viajesfallabella.cl
      When Click en Vuelos
      And Click en Solo Ida
      Then Inserta Origen
      And Click en Destino
      And Inserta Destino
      Then Click en Fecha Ida
      And Click en Fecha de Ida Seleccionada
      Then Selecciona Cantidad de Adultos
      And Selecciona Niños
      And Selecciona Infante
      Then Click en Buscar
      Then Verificar Pagina de resultados
    
  
