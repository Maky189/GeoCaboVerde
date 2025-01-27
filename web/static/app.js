async function fetchConselhos() {
    document.getElementById('freguesias-container').style.display = 'none';
    document.getElementById('zonas-container').style.display = 'none';
    document.getElementById('lugares-container').style.display = 'none';
    const ilhaId = document.getElementById('ilha').value;
    if (!ilhaId) {
        document.getElementById('conselhos-container').style.display = 'none';
        return;
    }

    try {
        const response = await fetch('/conselhos', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({ ilha_id: ilhaId })
        });

        if (response.ok) {
            const conselhos = await response.json();
            const conselhoSelect = document.getElementById('conselho');
            conselhoSelect.innerHTML = '<option value="" disabled selected>Selecione um Conselho</option>';
            conselhos.forEach(conselho => {
                const option = document.createElement('option');
                option.value = conselho.id;
                option.textContent = conselho.nome;
                conselhoSelect.appendChild(option);
            });
            document.getElementById('conselhos-container').style.display = 'block';
            $('.selectpicker').selectpicker('refresh');

        } else {
            console.error('Erro ao buscar conselhos');
        }
    } catch (error) {
        console.error('Erro ao buscar conselhos:', error);
    }
}

async function fetchFreguesias() {
    const conselhoId = document.getElementById('conselho').value;
    if (!conselhoId) {
        document.getElementById('freguesias-container').style.display = 'none';
        return;
    }

    try {
        const response = await fetch('/freguesias', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({ conselho_id: conselhoId })
        });

        if (response.ok) {
            const freguesias = await response.json();
            const freguesiaSelect = document.getElementById('freguesia');
            freguesiaSelect.innerHTML = '<option value="" disabled selected>Selecione uma Freguesia</option>';
            freguesias.forEach(freguesia => {
                const option = document.createElement('option');
                option.value = freguesia.id;
                option.textContent = freguesia.nome;
                freguesiaSelect.appendChild(option);
            });
            document.getElementById('freguesias-container').style.display = 'block';
            $('.selectpicker').selectpicker('refresh');

            document.getElementById('zonas-container').style.display = 'none';
            document.getElementById('lugares-container').style.display = 'none';
        } else {
            console.error('Erro ao buscar freguesias');
        }
    } catch (error) {
        console.error('Erro ao buscar freguesias:', error);
    }
}

async function fetchZonas() {
    const freguesiaId = document.getElementById('freguesia').value;
    if (!freguesiaId) {
        document.getElementById('zonas-container').style.display = 'none';
        return;
    }

    try {
        const response = await fetch('/zonas', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({ freguesia_id: freguesiaId })
        });

        if (response.ok) {
            const zonas = await response.json();
            const zonaSelect = document.getElementById('zona');
            zonaSelect.innerHTML = '<option value="" disabled selected>Selecione uma Zona</option>';
            zonas.forEach(zona => {
                const option = document.createElement('option');
                option.value = zona.id;
                option.textContent = zona.nome;
                zonaSelect.appendChild(option);
            });
            document.getElementById('zonas-container').style.display = 'block';
            $('.selectpicker').selectpicker('refresh');
            document.getElementById('lugares-container').style.display = 'none';
        } else {
            console.error('Erro ao buscar zonas');
        }
    } catch (error) {
        console.error('Erro ao buscar zonas:', error);
    }
}

async function fetchLugares() {
    const zonaId = document.getElementById('zona').value;
    if (!zonaId) {
        document.getElementById('lugares-container').style.display = 'none';
        return;
    }

    try {
        const response = await fetch('/lugares', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({ zona_id: zonaId })
        });

        if (response.ok) {
            const lugares = await response.json();
            const lugarSelect = document.getElementById('lugar');
            lugarSelect.innerHTML = '<option value="" disabled selected>Selecione um Lugar</option>';
            lugares.forEach(lugar => {
                const option = document.createElement('option');
                option.value = lugar.id;
                option.textContent = lugar.nome;
                lugarSelect.appendChild(option);
            });
            document.getElementById('lugares-container').style.display = 'block';
            $('.selectpicker').selectpicker('refresh');
        } else {
            console.error('Erro ao buscar lugares');
        }
    } catch (error) {
        console.error('Erro ao buscar lugares:', error);
    }
}

function showDescription() {
    const ilhaId = document.getElementById('ilha').value;
    const descriptions = {
        1: "Santo Antão, a segunda maior ilha de Cabo Verde, é um paraíso para os amantes da natureza e das aventuras ao ar livre.\nConhecida por suas paisagens montanhosas dramáticas, vales verdejantes e trilhas espetaculares, a ilha é um dos destinos mais fascinantes do arquipélago, ideal para quem busca explorar cenários de tirar o fôlego.",
        2: "São Vicente é uma das ilhas mais vibrantes e culturais do arquipélago de Cabo Verde, localizada no Oceano Atlântico.\nConhecida como a ilha da música, São Vicente se destaca por sua rica herança cultural, influenciada por tradições africanas, portuguesas e caribenhas.\nA capital da ilha, Mindelo, é considerada o coração cultural do país, famosa por suas coloridas festividades, como o Carnaval e o Festival da Baía das Gatas, além de sua animada vida noturna.",
        3: "São Nicolau é uma das ilhas mais encantadoras e autênticas de Cabo Verde, situada no grupo de ilhas do Barlavento.\nConhecida por suas paisagens montanhosas impressionantes, vales férteis e uma atmosfera tranquila, é o destino ideal para quem busca um refúgio longe do agito.\nA ilha é famosa por sua beleza natural, destacando-se o Monte Gordo, um parque natural com uma rica biodiversidade e trilhas perfeitas para caminhadas e ecoturismo.",
        4: "A ilha do Sal, parte do arquipélago de Cabo Verde, é um verdadeiro paraíso para os amantes do sol, praia e esportes aquáticos.\nConhecida por suas paisagens desérticas, praias de areia dourada e águas cristalinas de um azul turquesa hipnotizante, o Sal é uma das ilhas mais visitadas do país, atraindo turistas de todo o mundo.",
        5: "A ilha da Boa Vista, uma das mais deslumbrantes de Cabo Verde, é conhecida por suas paisagens paradisíacas e intocadas.\nParte do grupo de ilhas do Barlavento, Boa Vista é um destino perfeito para quem busca tranquilidade, praias extensas e uma conexão genuína com a natureza.\nSuas areias douradas e águas cristalinas a tornam um dos locais mais encantadores do arquipélago, ideal para relaxar e contemplar a beleza do Atlântico.",
        6: "A ilha do Maio, parte do grupo de ilhas do Sotavento em Cabo Verde, é um verdadeiro tesouro escondido, ideal para quem busca paz, autenticidade e natureza intocada.\nConhecida por suas extensas praias de areia branca, paisagens tranquilas e atmosfera acolhedora, Maio oferece um ritmo de vida sereno, perfeito para uma fuga relaxante.",
        7: "Santiago, a maior e mais populosa ilha de Cabo Verde, é o coração histórico, cultural e econômico do arquipélago.\nConhecida como o berço da nação cabo-verdiana, Santiago oferece uma rica combinação de paisagens naturais deslumbrantes, herança cultural vibrante e história marcante.\nA capital do país, Praia, está localizada em Santiago e é uma cidade dinâmica que combina o moderno com o tradicional. ",
        8: "A ilha do Fogo, uma das mais icônicas de Cabo Verde, é um destino fascinante e singular, conhecido por sua paisagem vulcânica dramática e seu espírito autêntico.\nDominada pelo majestoso Pico do Fogo, um vulcão ativo com 2.829 metros de altitude, é o ponto mais alto do arquipélago e oferece vistas impressionantes e uma experiência inesquecível para os amantes de aventura.",
        9: "A ilha Brava, a menor e mais charmosa de Cabo Verde, é conhecida como a Ilha das Flores devido à abundância de vegetação e flores coloridas que adornam sua paisagem.\nLocalizada no extremo sudoeste do arquipélago, Brava é um refúgio de tranquilidade e beleza natural, perfeita para quem busca paz, autenticidade e um contato íntimo com a natureza.",
    };

    if (descriptions[ilhaId]) {
        document.getElementById('description-content').innerText = descriptions[ilhaId];
        document.getElementById('description-box').style.display = 'block';
        document.getElementById('additional-box').style.display = 'block';
    } else {
        document.getElementById('description-box').style.display = 'none';
        document.getElementById('additional-box').style.display = 'none';
    }
}

function generateImage() {
    const ilhaId = document.getElementById('ilha').value;
    const imageUrl = ilhaId ? `/static/${ilhaId}.jpg` : '/static/CaboVerde.jpg';
    document.body.style.backgroundImage = `url(${imageUrl})`;
    document.body.style.backgroundSize = 'cover';
    document.body.className = ilhaId ? 'island' : 'cabo-verde';
}

function updateModalTitle() {
    const ilhaSelect = document.getElementById('ilha');
    const selectedOption = ilhaSelect.options[ilhaSelect.selectedIndex];
    const ilhaNome = selectedOption ? selectedOption.getAttribute('data-nome') : selectedOption.textContent;
    const infoButton = document.getElementById('infoButton');
    const modalTitle = document.getElementById('ilhaModalLabel');

    if (ilhaNome) {
        modalTitle.textContent = `Opções sobre a ilha ${ilhaNome}`;
        infoButton.style.display = 'inline-block';
    } else {
        infoButton.style.display = 'none';
    }
}

async function updateIlhaName(event) {
    event.preventDefault();
    const ilhaSelect = document.getElementById('ilha');
    const ilhaId = ilhaSelect.value;
    const newIlhaName = document.getElementById('newIlhaName').value;

    if (ilhaId && newIlhaName) {
        try {
            const response = await fetch('http://localhost:5000/ilhas', {
                method: 'PATCH',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify({ id: ilhaId, nome: newIlhaName })
            });

            if (response.ok) {
                alert('Nome da ilha alterado com sucesso!');
                location.reload();
            } else {
                const errorData = await response.json();
                console.error('Erro ao alterar o nome da ilha:', errorData.error);
                alert('Erro ao alterar o nome da ilha: ' + errorData.error);
            }
        } catch (error) {
            console.error('Erro ao alterar o nome da ilha:', error);
            alert('Erro ao alterar o nome da ilha: ' + error.message);
        }
    } else {
        alert('Selecione uma ilha e insira um novo nome');
    }
}

async function deleteIlha() {
    const ilhaSelect = document.getElementById('ilha');
    const ilhaId = ilhaSelect.value;

    if (ilhaId) {
        try {
            const response = await fetch('http://localhost:5000/ilhas', {
                method: 'DELETE',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify({ id: ilhaId })
            });

            if (response.ok) {
                alert('Ilha deletada com sucesso!');
                location.reload();
            } else {
                const errorData = await response.json();
                console.error('Erro ao deletar a ilha:', errorData.error);
                alert('Erro ao deletar a ilha: ' + errorData.error);
            }
        } catch (error) {
            console.error('Erro ao deletar a ilha:', error);
            alert('Erro ao deletar a ilha: ' + error.message);
        }
    }
}

async function createIlha() {
    const newIlhaName = document.getElementById('newIlhaName').value;

    if (newIlhaName) {
        try {
            const response = await fetch('http://localhost:5000/ilhas', {
                method: 'PUT',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify({ nome: newIlhaName })
            });

            if (response.ok) {
                alert('Nova ilha criada com sucesso!');
                location.reload();
            } else {
                const errorData = await response.json();
                console.error('Erro ao criar nova ilha:', errorData.error);
                alert('Erro ao criar nova ilha: ' + errorData.error);
            }
        } catch (error) {
            console.error('Erro ao criar nova ilha:', error);
            alert('Erro ao criar nova ilha: ' + error.message);
        }
    } else {
        alert('Insira um nome para a nova ilha');
    }
}

function updateConselhoModalTitle() {
    const conselhoSelect = document.getElementById('conselho');
    const selectedOption = conselhoSelect.options[conselhoSelect.selectedIndex];
    const conselhoNome = selectedOption ? selectedOption.textContent : null;
    const conselhoInfoButton = document.getElementById('conselhoInfoButton');
    const modalTitle = document.getElementById('conselhoModalLabel');

    if (conselhoNome) {
        modalTitle.textContent = `Opções sobre o conselho ${conselhoNome}`;
        conselhoInfoButton.style.display = 'inline-block';
    } else {
        conselhoInfoButton.style.display = 'none';
    }
}

async function updateConselhoName(event) {
    event.preventDefault();
    const conselhoSelect = document.getElementById('conselho');
    const conselhoId = conselhoSelect.value;
    const newConselhoName = document.getElementById('newConselhoName').value;

    if (conselhoId && newConselhoName) {
        try {
            const response = await fetch('http://localhost:5000/conselhos', {
                method: 'PATCH',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify({ id: conselhoId, conselho_atual: newConselhoName })
            });

            if (response.ok) {
                alert('Nome do conselho alterado com sucesso!');
                location.reload();
            } else {
                const errorData = await response.json();
                console.error('Erro ao alterar o nome do conselho:', errorData.error);
                alert('Erro ao alterar o nome do conselho: ' + errorData.error);
            }
        } catch (error) {
            console.error('Erro ao alterar o nome do conselho:', error);
            alert('Erro ao alterar o nome do conselho: ' + error.message);
        }
    } else {
        alert('Selecione um conselho e insira um novo nome');
    }
}

async function deleteConselho() {
    const conselhoSelect = document.getElementById('conselho');
    const conselhoId = conselhoSelect.value;

    if (conselhoId) {
        try {
            const response = await fetch('http://localhost:5000/conselhos', {
                method: 'DELETE',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify({ id: conselhoId })
            });

            if (response.ok) {
                alert('Conselho deletado com sucesso!');
                location.reload();
            } else {
                const errorData = await response.json();
                console.error('Erro ao deletar o conselho:', errorData.error);
                alert('Erro ao deletar o conselho: ' + errorData.error);
            }
        } catch (error) {
            console.error('Erro ao deletar o conselho:', error);
            alert('Erro ao deletar o conselho: ' + error.message);
        }
    }
}

async function createConselho() {
    const newConselhoName = document.getElementById('newConselhoName').value;
    const ilhaId = document.getElementById('ilha').value;

    if (newConselhoName && ilhaId) {
        try {
            const response = await fetch('http://localhost:5000/conselhos', {
                method: 'PUT',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify({ nome: newConselhoName, ilha: ilhaId })
            });

            if (response.ok) {
                alert('Novo conselho criado com sucesso!');
                location.reload();
            } else {
                const errorData = await response.json();
                console.error('Erro ao criar novo conselho:', errorData.error);
                alert('Erro ao criar novo conselho: ' + errorData.error);
            }
        } catch (error) {
            console.error('Erro ao criar novo conselho:', error);
            alert('Erro ao criar novo conselho: ' + error.message);
        }
    } else {
        alert('Insira um nome para o novo conselho e selecione uma ilha');
    }
}

function updateFreguesiaModalTitle() {
    const freguesiaSelect = document.getElementById('freguesia');
    const selectedOption = freguesiaSelect.options[freguesiaSelect.selectedIndex];
    const freguesiaNome = selectedOption ? selectedOption.textContent : null;
    const freguesiaInfoButton = document.getElementById('freguesiaInfoButton');
    const modalTitle = document.getElementById('freguesiaModalLabel');

    if (freguesiaNome) {
        modalTitle.textContent = `Opções sobre a freguesia ${freguesiaNome}`;
        freguesiaInfoButton.style.display = 'inline-block';
    } else {
        freguesiaInfoButton.style.display = 'none';
    }
}

async function updateFreguesiaName(event) {
    event.preventDefault();
    const freguesiaSelect = document.getElementById('freguesia');
    const freguesiaId = freguesiaSelect.value;
    const newFreguesiaName = document.getElementById('newFreguesiaName').value;

    if (freguesiaId && newFreguesiaName) {
        try {
            const response = await fetch('http://localhost:5000/freguesias', {
                method: 'PATCH',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify({ freguesia_anterior: freguesiaId, freguesia_atual: newFreguesiaName })
            });

            if (response.ok) {
                alert('Nome da freguesia alterado com sucesso!');
                location.reload();
            } else {
                const errorData = await response.json();
                console.error('Erro ao alterar o nome da freguesia:', errorData.error);
                alert('Erro ao alterar o nome da freguesia: ' + errorData.error);
            }
        } catch (error) {
            console.error('Erro ao alterar o nome da freguesia:', error);
            alert('Erro ao alterar o nome da freguesia: ' + error.message);
        }
    } else {
        alert('Selecione uma freguesia e insira um novo nome');
    }
}

async function deleteFreguesia() {
    const freguesiaSelect = document.getElementById('freguesia');
    const freguesiaId = freguesiaSelect.value;

    if (freguesiaId) {
        try {
            const response = await fetch('http://localhost:5000/freguesias', {
                method: 'DELETE',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify({ freguesia: freguesiaId })
            });

            if (response.ok) {
                alert('Freguesia deletada com sucesso!');
                location.reload();
            } else {
                const errorData = await response.json();
                console.error('Erro ao deletar a freguesia:', errorData.error);
                alert('Erro ao deletar a freguesia: ' + errorData.error);
            }
        } catch (error) {
            console.error('Erro ao deletar a freguesia:', error);
            alert('Erro ao deletar a freguesia: ' + error.message);
        }
    }
}

async function createFreguesia() {
    const newFreguesiaName = document.getElementById('newFreguesiaName').value;
    const conselhoId = document.getElementById('conselho').value;

    if (newFreguesiaName && conselhoId) {
        try {
            const response = await fetch('http://localhost:5000/freguesias', {
                method: 'PUT',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify({ nome: newFreguesiaName, conselho: conselhoId })
            });

            if (response.ok) {
                alert('Nova freguesia criada com sucesso!');
                location.reload();
            } else {
                const errorData = await response.json();
                console.error('Erro ao criar nova freguesia:', errorData.error);
                alert('Erro ao criar nova freguesia: ' + errorData.error);
            }
        } catch (error) {
            console.error('Erro ao criar nova freguesia:', error);
            alert('Erro ao criar nova freguesia: ' + error.message);
        }
    } else {
        alert('Insira um nome para a nova freguesia e selecione um conselho');
    }
}

function updateZonaModalTitle() {
    const zonaSelect = document.getElementById('zona');
    const selectedOption = zonaSelect.options[zonaSelect.selectedIndex];
    const zonaNome = selectedOption ? selectedOption.textContent : null;
    const zonaInfoButton = document.getElementById('zonaInfoButton');
    const modalTitle = document.getElementById('zonaModalLabel');

    if (zonaNome) {
        modalTitle.textContent = `Opções sobre a zona ${zonaNome}`;
        zonaInfoButton.style.display = 'inline-block';
    } else {
        zonaInfoButton.style.display = 'none';
    }
}

async function updateZonaName(event) {
    event.preventDefault();
    const zonaSelect = document.getElementById('zona');
    const zonaId = zonaSelect.value;
    const newZonaName = document.getElementById('newZonaName').value;

    if (zonaId && newZonaName) {
        try {
            const response = await fetch('http://localhost:5000/zonas', {
                method: 'PATCH',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify({ zona_anterior: zonaId, zona_atual: newZonaName })
            });

            if (response.ok) {
                alert('Nome da zona alterado com sucesso!');
                location.reload();
            } else {
                const errorData = await response.json();
                console.error('Erro ao alterar o nome da zona:', errorData.error);
                alert('Erro ao alterar o nome da zona: ' + errorData.error);
            }
        } catch (error) {
            console.error('Erro ao alterar o nome da zona:', error);
            alert('Erro ao alterar o nome da zona: ' + error.message);
        }
    } else {
        alert('Selecione uma zona e insira um novo nome');
    }
}

async function deleteZona() {
    const zonaSelect = document.getElementById('zona');
    const zonaId = zonaSelect.value;

    if (zonaId) {
        try {
            const response = await fetch('http://localhost:5000/zonas', {
                method: 'DELETE',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify({ zona: zonaId })
            });

            if (response.ok) {
                alert('Zona deletada com sucesso!');
                location.reload();
            } else {
                const errorData = await response.json();
                console.error('Erro ao deletar a zona:', errorData.error);
                alert('Erro ao deletar a zona: ' + errorData.error);
            }
        } catch (error) {
            console.error('Erro ao deletar a zona:', error);
            alert('Erro ao deletar a zona: ' + error.message);
        }
    }
}

async function createZona() {
    const newZonaName = document.getElementById('newZonaName').value;
    const freguesiaId = document.getElementById('freguesia').value;

    if (newZonaName && freguesiaId) {
        try {
            const response = await fetch('http://localhost:5000/zonas', {
                method: 'PUT',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify({ nome: newZonaName, freguesia: freguesiaId })
            });

            if (response.ok) {
                alert('Nova zona criada com sucesso!');
                location.reload();
            } else {
                const errorData = await response.json();
                console.error('Erro ao criar nova zona:', errorData.error);
                alert('Erro ao criar nova zona: ' + errorData.error);
            }
        } catch (error) {
            console.error('Erro ao criar nova zona:', error);
            alert('Erro ao criar nova zona: ' + error.message);
        }
    } else {
        alert('Insira um nome para a nova zona e selecione uma freguesia');
    }
}

function updateLugarModalTitle() {
    const lugarSelect = document.getElementById('lugar');
    const selectedOption = lugarSelect.options[lugarSelect.selectedIndex];
    const lugarNome = selectedOption ? selectedOption.textContent : null;
    const lugarInfoButton = document.getElementById('lugarInfoButton');
    const modalTitle = document.getElementById('lugarModalLabel');

    if (lugarNome) {
        modalTitle.textContent = `Opções sobre o lugar ${lugarNome}`;
        lugarInfoButton.style.display = 'inline-block';
    } else {
        lugarInfoButton.style.display = 'none';
    }
}

async function updateLugarName(event) {
    event.preventDefault();
    const lugarSelect = document.getElementById('lugar');
    const lugarId = lugarSelect.value;
    const newLugarName = document.getElementById('newLugarName').value;

    if (lugarId && newLugarName) {
        try {
            const response = await fetch('http://localhost:5000/lugares', {
                method: 'PATCH',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify({ lugar_anterior: lugarId, lugar_atual: newLugarName })
            });

            if (response.ok) {
                alert('Nome do lugar alterado com sucesso!');
                location.reload();
            } else {
                const errorData = await response.json();
                console.error('Erro ao alterar o nome do lugar:', errorData.error);
                alert('Erro ao alterar o nome do lugar: ' + errorData.error);
            }
        } catch (error) {
            console.error('Erro ao alterar o nome do lugar:', error);
            alert('Erro ao alterar o nome do lugar: ' + error.message);
        }
    } else {
        alert('Selecione um lugar e insira um novo nome');
    }
}

async function deleteLugar() {
    const lugarSelect = document.getElementById('lugar');
    const lugarId = lugarSelect.value;

    if (lugarId) {
        try {
            const response = await fetch('http://localhost:5000/lugares', {
                method: 'DELETE',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify({ lugar: lugarId })
            });

            if (response.ok) {
                alert('Lugar deletado com sucesso!');
                location.reload();
            } else {
                const errorData = await response.json();
                console.error('Erro ao deletar o lugar:', errorData.error);
                alert('Erro ao deletar o lugar: ' + errorData.error);
            }
        } catch (error) {
            console.error('Erro ao deletar o lugar:', error);
            alert('Erro ao deletar o lugar: ' + error.message);
        }
    }
}

async function createLugar() {
    const newLugarName = document.getElementById('newLugarName').value;
    const zonaId = document.getElementById('zona').value;

    if (newLugarName && zonaId) {
        try {
            const response = await fetch('http://localhost:5000/lugares', {
                method: 'PUT',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify({ nome: newLugarName, zona: zonaId })
            });

            if (response.ok) {
                alert('Novo lugar criado com sucesso!');
                location.reload();
            } else {
                const errorData = await response.json();
                console.error('Erro ao criar novo lugar:', errorData.error);
                alert('Erro ao criar novo lugar: ' + errorData.error);
            }
        } catch (error) {
            console.error('Erro ao criar novo lugar:', error);
            alert('Erro ao criar novo lugar: ' + error.message);
        }
    } else {
        alert('Insira um nome para o novo lugar e selecione uma zona');
    }
}

document.getElementById('updateIlhaForm').addEventListener('submit', updateIlhaName);
document.getElementById('updateConselhoForm').addEventListener('submit', updateConselhoName);
document.getElementById('updateFreguesiaForm').addEventListener('submit', updateFreguesiaName);
document.getElementById('updateZonaForm').addEventListener('submit', updateZonaName);
document.getElementById('updateLugarForm').addEventListener('submit', updateLugarName);

// Set initial background image and modal title
document.addEventListener('DOMContentLoaded', function() {
    generateImage();
    updateModalTitle();
    $('.selectpicker').selectpicker();
});
