# CBA-2026_SCT

# Controle Supervisório Modular para Processos Termohidráulicos (CLP + Foundation Fieldbus)

Este repositório disponibiliza os **artefatos computacionais, modelos matemáticos e códigos-fonte** utilizados para a validação experimental do artigo *"Síntese de Supervisores a Eventos Discretos para um Processo Industrial com Controle de Nível e Temperatura em Rede Foundation Fieldbus"*.

Os documentos e códigos aqui presentes servem para reproduzir, analisar e expandir a arquitetura de controle proposta. Eles são direcionados a pesquisadores e engenheiros de automação interessados na aplicação prática da **Teoria de Controle Supervisório (TCS)** de W. M. Wonham em sistemas híbridos complexos sujeitos ao problema da explosão de estados.

---

## 🏗️ Arquitetura do Sistema e Metodologia

O processo termohidráulico abrange um circuito de alimentação (bomba e válvula), dois tanques acoplados em cascata e um sistema de aquecimento resistivo. O projeto integra duas abordagens de controle:
* **Regulação Contínua (Rede Foundation Fieldbus):** Responsável pelo controle PID de nível e comunicação distribuída entre transmissores e atuadores.
* **Eventos Discretos (CLP SMAR):** Responsável por impor intertravamentos de segurança e sequenciamentos lógicos atuando de forma preempitiva sobre a rede FF.

Para mitigar a explosão de estados gerada pelas dinâmicas acopladas, utilizou-se:
1. **Modelagem Modular:** Decomposição da planta e das especificações em autômatos independentes.
2. **Redução Estrutural:** Otimização dos autômatos para minimizar o consumo de memória no hardware industrial.
3. **Coordenação Global:** Síntese de um supervisor coordenador ($S_{Coord}$) para resolver conflitos lógicos e garantir a propriedade de não-bloqueio (*deadlock-free*).

---

## 📂 Estrutura do Repositório e Arquivos de Síntese

O diretório principal e a pasta `/ED_MAX_FINAL/` contêm os artefatos de modelagem formal e os resultados da síntese. Os cálculos foram realizados nativamente no software **TCT**, sendo o projeto consolidado também disponibilizado para **Supremica** e implementado em linguagem **Ladder**.

### 📌 Formato dos Arquivos
* **`.wmod`:** Arquivo de projeto do software **Supremica**. Ideal para visualização estrutural e simulação gráfica da malha de controle.
* **`.DES` / `.DAT`:** Arquivos de dados descrevendo as transições e estados dos autômatos (nativos do **TCT**).
* **`.ADS`:** Arquivos de estrutura de dados auxiliares do **TCT**.
* **`.xml`:** Exportação dos modelos em formato estruturado para interoperabilidade.
* **`MAKEIT.TXT`:** Script/Macro contendo a rotina de comandos do TCT utilizada para automatizar a composição síncrona, síntese e redução de estados.
* **`LADDER_Final_v3.pdf`:** Código-fonte final estruturado em linguagem *Ladder* (incluindo *User Functions*), documentando a implementação prática da lógica no CLP da SMAR.
* **`.pdf`, `.png` e `.GIF`:** Representações visuais (grafos) dos autômatos, facilitando a análise sem a necessidade de softwares específicos.

### 🗂️ Nomenclatura e Mapeamento dos Modelos (SCT)
Os nomes dos arquivos refletem a notação matemática adotada no artigo:

* **`SIGMA` e `SIGMA_OV`:** Alfabeto de eventos ($\Sigma$), particionados em controláveis ($\Sigma_c$) e incontroláveis ($\Sigma_u$).
* **Planta Global (`G...`)**
  * `G`: Composição síncrona dos subsistemas da planta.
  * `GCONF`: Planta em malha fechada conflitante ($S/G$), base para a síntese do coordenador.
* **Especificações (`E...`)**
  * Restrições operacionais (Ex: `EIBV` bloqueio bomba/válvula, `EL1H` e `EL2H` níveis de tanques, `EM` modos de operação, `ETS1H` proteção térmica).
* **Linguagens e Supervisores Sintetizados (`K...` e `S...`)**
  * `K...`: Linguagens marcadas admissíveis obtidas via $supC$.
  * `S...`: Supervisores modulares (ex: `SM.DES`).
* **Supervisores Reduzidos (`SR...`)**
  * Modelos otimizados para implementação no CLP.
  * `SRM`: Supervisor reduzido de Modos de Operação ($S_{RM}$).
  * `SRCOORD`: Coordenador Global reduzido ($S_{RCoord}$).

---

## 📊 Resultados

Os resultados experimentais demonstram que a ação reativa e minimamente restritiva dos supervisores modulares garante o cumprimento de todas as restrições físicas do processo (prevenção de transbordamento, esvaziamento e queima das resistências). A topologia assegura autonomia e segurança com robustez perante perturbações e limitações de comunicação inerentes a redes industriais legadas.

---

## 👥 Autores

* **Yeremie A. Pando Bravo** *(PPGEAS / UFSC)*
* **Gustavo F. de Sousa** *(PPGEAS / UFSC)*
* **Max H. de Queiroz** *(DAS / UFSC)*

---

## 📜 Citação

Se utilizar os modelos ou códigos deste repositório em sua pesquisa, por favor, cite o artigo associado:
> Pando Bravo, Y. A., de Sousa, G. F., & de Queiroz, M. H. (2026). *Síntese de Supervisores a Eventos Discretos para um Processo Industrial com Controle de Nível e Temperatura em Rede Foundation Fieldbus*. Anais do Congresso Brasileiro de Automática (CBA 2026).
