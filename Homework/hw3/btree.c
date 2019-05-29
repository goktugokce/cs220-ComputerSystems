#include "btree.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>

struct treeNode {
	char * payload;
	int count;
	struct treeNode * left;
	struct treeNode * right;
};

/* Insert your code for the btree methods here */
node newNode(char * word){
	node newTree = malloc(sizeof(struct treeNode));
	newTree->payload = malloc(sizeof(word));
	newTree->payload = strdup(word);
	newTree->count = 1;
	newTree->left = NULL;
	newTree->right = NULL;
	return newTree;
}
void addTree(node root,char * word){
	assert(root!=NULL);
	if(strcmp(root->payload,word)==0){
		root->count = root->count + 1;
		return;
	}
	else if(strcmp(root->payload,word)<0){
		if(root->right == NULL){
			root->right = newNode(word);
		}
		else{
			addTree(root->right,word);
		}
	}
	else{
		if(root->left == NULL){
			root->left = newNode(word);
		}
		else{
			addTree(root->left,word);
		}
	}
}
void printTree(node root){
	if(root == NULL){
		return;
	}
	printTree(root->left);
	printf("%4d : %s\n",root->count,root->payload);
	printTree(root->right);
}
void freeTree(node root){
	if(root == NULL){
		return;
	}
	freeTree(root->left);
	freeTree(root->right);
	free(root->payload);
	free(root);
}