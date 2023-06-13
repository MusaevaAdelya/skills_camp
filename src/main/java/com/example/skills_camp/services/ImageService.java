package com.example.skills_camp.services;

import com.example.skills_camp.util.FileStorageImpl;
import lombok.RequiredArgsConstructor;
import lombok.SneakyThrows;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.FileNotFoundException;
import java.io.IOException;

@Service
@RequiredArgsConstructor
public class ImageService {
    private final FileStorageImpl fileStorage;

    @SneakyThrows
    public String saveImage(MultipartFile image){
        String imageStorageName=fileStorage.save(image.getInputStream(),image.getOriginalFilename());
        return imageStorageName;
    }



    @SneakyThrows
    public String saveImage(String path ,MultipartFile image){
        String imageStorageName=fileStorage.save(image.getInputStream(),image.getOriginalFilename(), path);
        return imageStorageName;
    }

    public void deleteImage(String imageName) throws IOException {
        try {
            fileStorage.delete(imageName);
        }catch (IOException e){
            throw new FileNotFoundException(String.format("cannot find image: %s",imageName));
        }
    }

    @SneakyThrows
    public void replaceImage(MultipartFile newImage, String oldImageName) {
        fileStorage.rewrite(newImage.getInputStream(),oldImageName);
    }
}
