int main(){
    long int z = 0;
    long int i = 0;
    long int y = 0;
    for(i = 0; i < 50000; i++){
        for(y = 0; y < 50000;y++){
            z+=i-y;
        }
    }
    return 0;
}
