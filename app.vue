<script setup lang="ts">
import { icon } from '@fortawesome/fontawesome-svg-core';
import { Card } from './components/ui/card';
import CardContent from './components/ui/card/CardContent.vue';
import CardDescription from './components/ui/card/CardDescription.vue';
import CardHeader from './components/ui/card/CardHeader.vue';
import CardTitle from './components/ui/card/CardTitle.vue';
import Separator from './components/ui/separator/Separator.vue';

</script>

<template>
    <div class="flex flex-row p-4 justify-around items-center">
        <a href="https://linkedin.com/in/callumbirks" target="_blank">
            <font-awesome-icon size="2xl" :icon="['fab', 'linkedin']" />
        </a>
        <div class="flex flex-col items-center justify-center">
            <p class="text-3xl text-primary">Callum Birks</p>
            <p class="text-lg text-muted-foreground">Software Engineer</p>
        </div>
        <a href="https://github.com/callumbirks" target="_blank">
            <font-awesome-icon size="2xl" :icon="['fab', 'github']" />
        </a>
    </div>
    <div class="flex p-4 items-center justify-center">
        <div class="flex flex-col space-y-4">
            <Card class="w-full">
                <CardHeader>
                    <CardTitle>
                        <div class="flex flex-row items-center space-x-2">
                            <img src="~/assets/couchbase.svg" class="max-w-6" />
                            <p class="text-lg">Couchbase</p>
                        </div>
                    </CardTitle>
                    <CardDescription>
                        <div class="flex h-5 flex-row space-x-2">
                            <p>Software Engineer</p>
                            <Separator orientation="vertical" />
                            <p>July 2022 - Now</p>
                        </div>
                    </CardDescription>
                </CardHeader>
                <CardContent>
                    <p>
                        Maintaining
                        <a class="text-ring" href="https://github.com/couchbase/couchbase-lite-core"
                            target="_blank">Couchbase Litecore</a>
                        - the C++ common backend for all Couchbase Lite platforms.
                    </p>
                    <p>
                        Created <a class="text-ring" href="" target="_blank">Lumberjack</a>
                        - a Rust tool for developers and customers to analyze and navigate
                        CBL logs in order to diagnose issues.
                    </p>
                </CardContent>
            </Card>
            <Card class="w-full">
                <CardHeader>
                    <CardTitle>
                        <div class="flex flex-row items-center space-x-2">
                            <img src="~/assets/arm.svg" class="max-w-6" />
                            <p class="text-lg">Arm</p>
                        </div>
                    </CardTitle>
                    <CardDescription>
                        <div class="flex h-5 flex-row space-x-2">
                            <p>Part-Time Undergraduate</p>
                            <Separator orientation="vertical" />
                            <p>March 2021 - March 2022</p>
                        </div>
                    </CardDescription>
                </CardHeader>
                <CardContent>
                    <p>Rewrote GPU debug drivers from C & Python into C++, decreased runtime by 17% across a heavy suite
                        of tests.</p>
                </CardContent>
            </Card>
        </div>
    </div>
</template>
