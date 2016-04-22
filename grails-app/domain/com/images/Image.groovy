package com.images

import com.userInfo.User

class Image {

    String imageName
    String imageType
    byte[] imageBytes

    static belongsTo = [user:User]
    static constraints = {
        imageBytes(maxSize:204800000)
    }

}
