// spdx-licence-Identi
pragma solidity ^0.8.0;

contract VotingWithReferral {
    mapping(address => uint256) public votes;
    mapping(address => address) public referrals;
    mapping(address => bool) public hasVoted;

    address public owner;
    address[] public voters;

    event Voted(address indexed voter, uint256 power);

    function vote(address referrer) external {
        require(!hasVoted[msg.sender], "Already voted");
        
        uint256 power = 1; // Base voting power
        
        if (referrer != address(0) && referrer != msg.sender) {
            referrals[msg.sender] = referrer;
            power += votes[referrer] / 2; // 50% of referrer's votes as boost
        }
        
        votes[msg.sender] += power;
        hasVoted[msg.sender] = true;
        voters.push(msg.sender);
        
        emit Voted(msg.sender, power);
    }
    
    function getTotalVotes() external view returns (uint256 total) {
        for (uint256 i = 0; i < voters.length; i++) {
            total += votes[voters[i]];
        }
    }
    
    function getVoterCount() external view returns (uint256) {
        return voters.length;
    }
}
