// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.17;

contract BlindAuction_2 {
    // 拍卖的当前状态。
    address public highestBidder;
    uint public highestBid;
    /***************************** begin ***************************************************/
    /// @dev 定义一个error 命名为BidNotHighEnough 当本次出价低于当前最高竞拍价触发异常
    /// @param highestBid 参数1表示当前合约账户余额
    /// @param currentBid 参数2转账金额
    //在此处添加代码，依据上述提示，定义一个错误异常


    //在此处添加代码，定义一个映射类型，命名为pendingReturns。当本次竞拍价高于最高竞拍价记录，在替代最高竞拍记录前，需要保存最高竞拍记录者信息（最高竞拍账户=>最高竞拍价），
    //以备竞拍结束将钱款退回账户

    /***************************** end ***************************************************/
    


    /// 对拍卖进行出价，具体的出价随交易一起发送。
    function bid() external payable{
        
        /***************************** begin ***************************************************/
        //实现具体的业务判断
        // 在此处添加代码，如果本次竞拍价低于最高竞拍记录，触发异常，回滚交易(tip:通过revert结合BidNotHighEnough触发异常)
       
        if (highestBid != 0) {
             // 在此处添加代码，完成相应账户追加退款的映射。当本次竞拍价高于最高竞拍价记录，替代最高竞拍者记录前，保存最高竞拍记录者信息（最高竞拍账户=>最高竞拍价），
             //以备竞拍结束将钱款退回账户
             // 注意：一个用户可以多次参与竞拍，多次被替代，因此需要累加账户的多次竞拍结果。
        }      

        /***************************** end ***************************************************/
        highestBidder = msg.sender;
        highestBid = msg.value;
    }
}