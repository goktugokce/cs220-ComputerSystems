#include "llnode.h"
#include <stdio.h>
#include <stdlib.h>

struct llnode {
	int payload;
	struct llnode * next;
};

/* Add code for methods here */

node newNode(int value){
	node newNode = malloc(sizeof(node));
	newNode->payload = value;
	newNode->next = NULL;
	return newNode;
}

node addToHead(node head, int value){
	node new = newNode(value);	
	if(head == NULL){
		head = new;
	}
	else{
		new->next = head;
	}
	return new;
}

node addToTail(node head,int value){
	node new = newNode(value);
	node temp = malloc(sizeof(node));
	if(head == NULL){
		head = new;
		return head;
	}
	else{
		temp = head;
		while((temp->next != NULL)){
			temp = temp->next;
		}
		temp->next = new;
	}
	return head;
}

node addIncreasing(node head, int value){
	node new = newNode(value);
	node temp = malloc(sizeof(node));

	if(head == NULL){
		head = new;
	}
	else if(head->payload > value){
		new->next = head;
		return new;
	}
	else{
		temp = head;
		while(temp->next != NULL && temp->next->payload < new->payload){
			temp = temp->next;
		}
		new->next = temp->next;
		temp->next = new;
	}
	return head;
	
}

int listSize(node head){
	int count = 1;
	node temp = malloc(sizeof(node));
	if(head == NULL){
		count = 0;
	}
	else{
		temp = head;
		while(temp->next != NULL){
			temp = temp->next;
			count++;
		}
	}
	return count;
}


void printList(node head){
	printf("Head@%p ",head);
	while(head!=NULL) {
    printf(" -> %d",head->payload);
		head = head->next;
	}
	printf("\n");
}


void freeList(node head){
	if (head==NULL) return;
	freeList(head->next);
	free(head);
}

