//
//  UserDetail.swift
//  Poaeng
//
//  Created by 박성수 on 2022/04/07.
//

import SwiftUI

struct UserDetail: View {
    var user:User
    
    var body: some View {
        MentorProfileView()
            
    }
}

struct UserDetail_Previews: PreviewProvider {
    static var previews: some View {
        UserDetail(user:users[0])
    }
}
