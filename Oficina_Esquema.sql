-- Esquema lógico para o banco de dados da Oficina Mecânica

-- Criação da tabela de Clientes
CREATE TABLE Cliente (
    idCliente INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100) NOT NULL,
    CPF VARCHAR(14) UNIQUE NOT NULL,
    Telefone VARCHAR(15),
    Email VARCHAR(100),
    Endereco VARCHAR(255)
);

-- Criação da tabela de Veículos
CREATE TABLE Veiculo (
    idVeiculo INT PRIMARY KEY AUTO_INCREMENT,
    Placa VARCHAR(10) UNIQUE NOT NULL,
    Modelo VARCHAR(100) NOT NULL,
    Marca VARCHAR(100) NOT NULL,
    Ano INT,
    idCliente INT NOT NULL,
    FOREIGN KEY (idCliente) REFERENCES Cliente(idCliente)
);

-- Criação da tabela de Funcionários
CREATE TABLE Funcionario (
    idFuncionario INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100) NOT NULL,
    CPF VARCHAR(14) UNIQUE NOT NULL,
    Cargo VARCHAR(50) NOT NULL,
    Salario DECIMAL(10, 2),
    DataContratacao DATE NOT NULL
);

-- Criação da tabela de Serviços
CREATE TABLE Servico (
    idServico INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100) NOT NULL,
    Descricao TEXT,
    Preco DECIMAL(10, 2) NOT NULL
);

-- Criação da tabela de Ordens de Serviço
CREATE TABLE OrdemServico (
    idOrdemServico INT PRIMARY KEY AUTO_INCREMENT,
    DataAbertura DATE NOT NULL,
    DataConclusao DATE,
    Status VARCHAR(50) NOT NULL,
    idVeiculo INT NOT NULL,
    idFuncionario INT NOT NULL,
    FOREIGN KEY (idVeiculo) REFERENCES Veiculo(idVeiculo),
    FOREIGN KEY (idFuncionario) REFERENCES Funcionario(idFuncionario)
);

-- Criação da tabela de Itens da Ordem de Serviço
CREATE TABLE ItemOrdemServico (
    idItemOrdemServico INT PRIMARY KEY AUTO_INCREMENT,
    idOrdemServico INT NOT NULL,
    idServico INT NOT NULL,
    Quantidade INT NOT NULL,
    PrecoTotal DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (idOrdemServico) REFERENCES OrdemServico(idOrdemServico),
    FOREIGN KEY (idServico) REFERENCES Servico(idServico)
);

-- Criação da tabela de Pagamentos
CREATE TABLE Pagamento (
    idPagamento INT PRIMARY KEY AUTO_INCREMENT,
    idOrdemServico INT NOT NULL,
    ValorPago DECIMAL(10, 2) NOT NULL,
    DataPagamento DATE NOT NULL,
    MeioPagamento VARCHAR(50),
    FOREIGN KEY (idOrdemServico) REFERENCES OrdemServico(idOrdemServico)
);
