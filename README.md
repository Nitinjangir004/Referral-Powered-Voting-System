# Referral-Powered Voting System

## Overview
The **Referral-Powered Voting System** is a decentralized voting smart contract that incentivizes participation through a referral-based power boost mechanism. Users can vote, and their voting power increases if they were referred by someone who has already voted. This system encourages engagement and creates a dynamic and fair voting environment.

## Features

- **Decentralized Voting**: No central authority is required; all votes are stored transparently on-chain.
- **Referral-Based Power Boost**: New voters can increase their voting power based on their referrer’s influence.
- **Immutable and Transparent**: All votes are recorded on the blockchain for auditability.
- **Prevents Double Voting**: Each voter is allowed to cast a vote only once.
- **Vote Tracking & Statistics**: Provides functions to check total votes and unique voter count.

## Deployed Address
This smart contract has been deployed on **Edu Chain** at the following address:

```
0xcbc0b22ca0c4f986195881103f34482915e69ef9
```

## Smart Contract Functions

### `vote(address referrer)`
Allows a user to vote, optionally specifying a referrer to gain additional voting power.

### `getTotalVotes()`
Returns the total number of votes cast in the system.

### `getVoterCount()`
Returns the total number of unique voters.

## Future Enhancements
- Implement **token-based incentives** for voters and referrers.
- Add **time-locked voting periods** to enable voting in rounds.
- Create a **Web3 frontend** for better user experience.
- Expand to support **multiple-choice voting**.

## How to Use
1. Interact with the smart contract on **Edu Chain** using a blockchain explorer or Web3 wallet.
2. Call `vote()` to cast your vote and optionally provide a referrer.
3. Check voting statistics using `getTotalVotes()` and `getVoterCount()`.

---
🚀 **Referral-Powered Voting System** is designed to enhance engagement in decentralized voting while ensuring transparency and fairness. Let us know if you have any suggestions for improvements! 🚀
