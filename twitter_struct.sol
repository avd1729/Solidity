// SPDX-License-Identifier: MIT

pragma solidity ^0.8.22;

contract twitter {
    struct tweet {
        address author;
        string content;
        uint256 timestamp;
        uint256 likes;
    }
    mapping(address => tweet[]) public tweets;

    function createTweet(string memory _tweet) public {
        tweet memory newtweet = tweet({
            author: msg.sender,
            content: _tweet,
            timestamp: block.timestamp,
            likes: 0
        });
        tweets[msg.sender].push(newtweet);
    }

    function getTweet(
        address _owner,
        uint _i
    ) public view returns (tweet memory) {
        return tweets[_owner][_i];
    }

    function getAllTweets(address _owner) public view returns (tweet[] memory) {
        return tweets[_owner];
    }
}
