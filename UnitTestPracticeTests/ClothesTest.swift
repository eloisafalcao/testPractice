//
//  ClothesTest.swift
//  UnitTestPracticeTests
//
//  Created by Eloisa Falcão on 07/04/20.
//  Copyright © 2020 Eloisa Falcão. All rights reserved.
//

import XCTest
@testable import UnitTestPractice

// MARK: UNITI TEST
/// cada classe dentro do código, tem seu prórpio arquivo de teste, É IMPRESCINDÍVEL SEPARAR AS COISAS DENTRO DO CÓDIGO, não criar zonas
class ClothesTest: XCTestCase {

    /// quando queremos utilizar o mesmo valor ou objeto multíplas vezes no mesmo projeto, o melhor caminho é criar tudo dentro do setUp(). Essa função é chamada antes de rodar CADA teste, por isso é o melhor lugar para resetar os estados dos casos de teste e criar cópias novas dos objetos que queremos rodar os testes.

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    // MARK: Nome da função
    /// o nome e uma funcão de teste deve sempre começão com test em seguida uma descrição do que ela faz --> Para rodar o teste é só clicar do diamante do lado

    func testApplyCoupon()  {
        //MARK: Given, When, Then
        /// uma maneira de tornar os testes mais faceis de ler, especialmente quando consideramos trabalhar com um time

        // Given -> Valores necessários para teste
        let balletShoes = Clothes(price: 100.0, type: .Shoes, gender: .Female)

        // When -> código a ser testado
        balletShoes.apply(.FistTime)

        // Then -> Confirma(ou não) o resultado esperado
        XCTAssertEqual(balletShoes.price, 90.0)
    }
}
