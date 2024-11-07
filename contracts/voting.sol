
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Voting {
    struct Candidate {
        uint256 id;
        string name;
        uint256 voteCount;
    }
    
    struct Voter {
        bool hasVoted;
        uint256 votedFor;
    }
    
    address public owner;
    mapping(address => Voter) public voters;
    Candidate[] public candidates;
    bool public votingOpen;
    
    // Error intencional 1: No hay evento para el registro de votos
    
    constructor() {
        owner = msg.sender;
        votingOpen = true;
        
        // Error intencional 2: No se verifica duplicidad de candidatos
        addCandidate("Candidato 1");
        addCandidate("Candidato 2");
    }
    
    // Error intencional 3: Falta modifier para verificar owner
    function addCandidate(string memory _name) public {
        candidates.push(Candidate({
            id: candidates.length,
            name: _name,
            voteCount: 0
        }));
    }
    
    // Error intencional 4: No se verifica si la votación está abierta
    function vote(uint256 _candidateId) public {
        Voter storage sender = voters[msg.sender];
        
        // Error intencional 5: No se verifica si el candidato existe
        require(!sender.hasVoted, "Ya has votado");
        
        sender.hasVoted = true;
        sender.votedFor = _candidateId;
        
        // Error intencional 6: Incremento incorrecto del contador
        candidates[_candidateId].voteCount += 1;
    }
    
    function getVoteCount(uint256 _candidateId) public view returns (uint256) {
        // Error intencional 7: No se valida el índice
        return candidates[_candidateId].voteCount;
    }
    
    function getCandidatesCount() public view returns (uint256) {
        return candidates.length;
    }
    
    // Error intencional 8: Cualquiera puede cerrar la votación
    function closeVoting() public {
        votingOpen = false;
    }
}
