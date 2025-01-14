import React, { useState, useEffect } from 'react';
import styled from 'styled-components';
import BuscaReservas from '../BuscaReservaDashebord/BuscaReservaDashebord.jsx';
import TextoInformativo from "../../Components/TextoInformativo/TextoInformativo.jsx";

const SessaoReservas = styled.section`

  height: 60vh;
  display: flex;
  justify-content: center;
  align-items: start;
  padding-top: 2rem;
  @media (max-width: 768px) {
    height: 50vh;
    padding-top: 1rem; 
  }
  @media (max-width: 480px) {
    height: 45vh; 
  }
`;

const BoxReservas = styled.div`
  height: 100%;
  width: 60%;
  border-radius: 20px;
  box-shadow: 0px 2px 20px rgba(0, 0, 0, 0.1);
  background-color: #fff;
  display: flex;
  justify-content: center;
  align-items: center;
  padding: 15px;

  @media (max-width: 768px) {
    width: 80%; 
    padding: 20px; 
  }
  @media (max-width: 480px) {
    width: 90%;
    padding: 15px; 
  }
`;

const Reservas = styled.div`
  height: 100%;
  width: 100%;
  border-radius: 20px;
  background-color: #F6F8FA;
  overflow-y: auto;
  padding: 20px;
  @media (max-width: 768px) {
    padding: 15px; 
  }
  @media (max-width: 480px) {
    padding: 10px; 
  }
`;

const ResultadoBusca = styled.div`
  margin-top: 20px;
  padding: 20px;
  border-radius: 10px;
  @media (max-width: 768px) {
    padding: 15px;
    margin-top: 15px; 
  }
  @media (max-width: 480px) {
    padding: 10px; 
  }
`;

const Tabela = styled.table`
  width: 100%;
  border-collapse: collapse;
  background-color: #fff;
  border-radius: 8px;
  box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
  font-family: 'Roboto', sans-serif;
`;

const NomeDasColunas = styled.th`
  padding: 12px;
  background-color: #f4f6f9;
  color: #333;
  font-size: 14px;
  text-align: left;
  font-weight: 500;
  border-bottom: 2px solid #e0e0e0;
  letter-spacing: 0.5px;
`;

const DadosDasColunas = styled.td`
  padding: 12px;
  font-size: 14px;
  color: #555;
  border-bottom: 1px solid #e0e0e0;
  text-align: left;
  font-weight: 300;
  letter-spacing: 0.5px;
`;

const RegistroDasReservas = styled.p`
    font-size: 18px;
    font-weight: 500;
`
const LinhaHorizontal = styled.hr`
  width: 100%;
  border: 1px solid #ccc;
`;

const ReservaDashboard = () => {
  const [resultados, setResultados] = useState([]);
  const [loading, setLoading] = useState(false);
  const [buscou, setBuscou] = useState(false);


  return (
    <>
      <TextoInformativo Informacao="Reservas" />
      <SessaoReservas>
        <BoxReservas>
          <Reservas>
            <RegistroDasReservas>Registro das Reservas</RegistroDasReservas>
            <LinhaHorizontal />
            <BuscaReservas
                reservas={resultados}
                setResultados={setResultados}
                setLoading={setLoading}
                setBuscou={setBuscou}
              />
              

            {loading ? (
              <div>Carregando...</div>
            ) : (
              <ResultadoBusca>
                {resultados.valortotal > 0 ? (
                  <Tabela>
                    <thead>
                      <tr>
                        <NomeDasColunas>Nome</NomeDasColunas>
                        <NomeDasColunas>CPF</NomeDasColunas>
                        <NomeDasColunas>Email</NomeDasColunas>
                        <NomeDasColunas>Hospedagem</NomeDasColunas>
                        <NomeDasColunas>Preço Pago</NomeDasColunas>
                        <NomeDasColunas>Check-in</NomeDasColunas>
                        <NomeDasColunas>Check-out</NomeDasColunas>
                      </tr>
                    </thead>
                    <tbody>
                      {resultados.ListaDeUsers.map((reserva, index) => {
                       
                        console.log(reserva);
                        const checkin = new Date(reserva.checkin);
                        checkin.setDate(checkin.getDate() );  

                        const checkout = new Date(reserva.checkout);
                        checkout.setDate(checkout.getDate() );  
                        
                        
                        const checkinFormatted = checkin.toISOString().split('T')[0];
                        const checkoutFormatted = checkout.toISOString().split('T')[0];
                        
                        return (
                          <tr key={index}>
                            <DadosDasColunas>{reserva.nome}</DadosDasColunas>
                            <DadosDasColunas>{reserva.cpf}</DadosDasColunas>
                            <DadosDasColunas>{reserva.email}</DadosDasColunas>
                            <DadosDasColunas>{reserva.hospedagem}</DadosDasColunas>
                            <DadosDasColunas>{reserva.valor}</DadosDasColunas>
                            <DadosDasColunas>{checkinFormatted}</DadosDasColunas> 
                            <DadosDasColunas>{checkoutFormatted}</DadosDasColunas> 
                          </tr>
                        );
                      })}
                    </tbody>
                  </Tabela>
                ) : buscou ? (
                  <p>Nenhuma reserva foi encontrada para essa data</p>
                ) : (
                  <p>Pesquise uma reserva</p>
                )}
              </ResultadoBusca>
            )}
          </Reservas>
        </BoxReservas>
      </SessaoReservas>
    </>
  );
};

export default ReservaDashboard;
